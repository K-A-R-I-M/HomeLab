terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
  pm_tls_insecure     = true
}

resource "proxmox_vm_qemu" "arch-karim-nodes" {
  agent       = 1
  count       = var.vm_count
  name        = "arch-karim-nodes-${count.index + 1}"
  target_node = var.proxmox_node
  bios        = "ovmf" # UEFI
  onboot      = true
  cores       = 2
  sockets     = 2
  memory      = 8192
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "ide2"
  boot        = "order=scsi0;ide2;net0"

  disks {
    ide {
      ide2 {
        cdrom {
          iso = var.iso
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size = "32G"
          storage = "local-lvm"
          format = "raw"
        }
      }
    }
  }
  
  
  network {
    id = 0
    model  = "virtio"
    bridge = "vmbr0"
    tag = null
  }

  serial {
    id = 0
    type = "socket"
  }

  sshkeys   = var.sshkey

}