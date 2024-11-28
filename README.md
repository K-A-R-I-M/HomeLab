# HOMELAB

## Ansible Install

```
pip install ansible
apt install -y sshpass
```

## Terraform

```
terraform init
terraform plan -var-file="general.tfvars"
terraform apply -var-file="general.tfvars"
```

```
terraform destroy -var-file="general.tfvars"
```