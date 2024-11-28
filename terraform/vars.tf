variable "proxmox_api_url" {
  type = string 
}

variable "proxmox_api_token_id" {
  type = string
}

variable "proxmox_api_token_secret" {
  type = string 
  sensitive = true
}

variable "proxmox_node" {
  type = string
}

variable "pm_template" {
  type = string
}

variable "sshkey" {
  type = string
}

variable "private_key_path"{
    type = string
}

variable "vm_count"{
    type = number
}

variable "iso"{
    type = string
}