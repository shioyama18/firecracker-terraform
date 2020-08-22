# terraform-firecracker

Terraform scripts to create instance to build and test firecracker.

Below resources will be created:
- VPC
  - VPC
  - Subnets (1 private, 1 public)
  - Route Tables
  - Internet Gateway
  - NAT Gateway
  - Security Group
- EC2 instance
  - Ubuntu 18.04 (i3.metal)
  - Instance Profile that allows SSM access

## Usage

1. Run `terraform apply` to create EC2 instance:

```bash
cd infra
terraform init
terraform apply -var-file=../config.tfvars
```

2. Access the instance using SSM Session Manager.

```bash
terraform output
# instance_id = "i-XXXXXXXXXXXXXXXXX"

aws ssm start-session --target <instance_id>
```
