# Advanced Terraform Modules for Multi-Environment Deployments

This project demonstrates how to use reusable Terraform modules to deploy infrastructure across multiple environments (dev, staging, prod).

## Folder Structure

- `modules/`: Contains reusable Terraform modules for VPC, EC2, and RDS.
- `environments/`: Contains environment-specific configurations for dev, staging, and prod.

## How to Use

1. Clone the repository.
2. Navigate to the desired environment (e.g., `environments/dev`).
3. Run `terraform init` and `terraform apply` to deploy the infrastructure.