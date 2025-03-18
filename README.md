# Advanced Terraform Modules for Multi-Environment Deployments

This project demonstrates how to use **reusable Terraform modules** to deploy infrastructure across multiple environments (**dev**, **staging**, and **prod**). It includes modules for **VPC**, **EC2**, and **RDS**, and showcases best practices for managing infrastructure as code (IaC) in a multi-environment setup.

---

## **Project Overview**

The project is structured to support **three environments**:
1. **Dev**: For development and testing.
2. **Staging**: For pre-production testing.
3. **Prod**: For production workloads.

Each environment has its own configuration files (`main.tf`, `variables.tf`, and `terraform.tfvars`) but shares reusable modules for **VPC**, **EC2**, and **RDS**.

---

## **Folder Structure**
terraform-multi-env/
├── modules/
│ ├── vpc/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ ├── ec2/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ └── rds/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── environments/
│ ├── dev/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── terraform.tfvars
│ ├── staging/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── terraform.tfvars
│ └── prod/
│ ├── main.tf
│ ├── variables.tf
│ └── terraform.tfvars
└── README.md


---

## **Modules**

### **1. VPC Module**
- **Purpose**: Creates a Virtual Private Cloud (VPC) with a public subnet.
- **Files**:
  - `main.tf`: Defines the VPC and subnet resources.
  - `variables.tf`: Declares input variables (e.g., `cidr_block`, `env`).
  - `outputs.tf`: Exports outputs (e.g., `vpc_id`, `public_subnet_id`).

### **2. EC2 Module**
- **Purpose**: Deploys an EC2 instance in the specified subnet.
- **Files**:
  - `main.tf`: Defines the EC2 instance resource.
  - `variables.tf`: Declares input variables (e.g., `ami_id`, `instance_type`).
  - `outputs.tf`: Exports outputs (e.g., `instance_id`).

### **3. RDS Module**
- **Purpose**: Deploys an RDS instance for the specified database.
- **Files**:
  - `main.tf`: Defines the RDS instance resource.
  - `variables.tf`: Declares input variables (e.g., `storage_size`, `engine`).
  - `outputs.tf`: Exports outputs (e.g., `rds_endpoint`).

---

## **Environments**

Each environment has its own configuration files:

### **1. Dev Environment**
- **Purpose**: Used for development and testing.
- **Files**:
  - `main.tf`: Calls the VPC, EC2, and RDS modules with dev-specific configurations.
  - `variables.tf`: Declares variables used in `main.tf`.
  - `terraform.tfvars`: Provides values for the variables.

### **2. Staging Environment**
- **Purpose**: Used for pre-production testing.
- **Files**:
  - `main.tf`: Calls the VPC, EC2, and RDS modules with staging-specific configurations.
  - `variables.tf`: Declares variables used in `main.tf`.
  - `terraform.tfvars`: Provides values for the variables.

### **3. Prod Environment**
- **Purpose**: Used for production workloads.
- **Files**:
  - `main.tf`: Calls the VPC, EC2, and RDS modules with prod-specific configurations.
  - `variables.tf`: Declares variables used in `main.tf`.
  - `terraform.tfvars`: Provides values for the variables.

---

## **How to Use**

### **1. Prerequisites**
- Install [Terraform](https://www.terraform.io/downloads.html).
- Configure AWS credentials using the AWS CLI or environment variables.

### **2. Initialize Terraform**
Navigate to the desired environment directory (e.g., `environments/dev`) and run:
```bash
terraform init
