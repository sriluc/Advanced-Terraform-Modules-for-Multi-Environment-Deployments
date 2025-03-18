# environments/prod/variables.tf
variable "cidr_block" {
    description = "The CIDR block for the VPC"
    type        = string
}

variable "ami_id" {
    description = "The AMI ID for the EC2 instance"
    type        = string
}

variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type        = string
}

variable "storage_size" {
    description = "The allocated storage size in GB for the RDS instance"
    type        = number
}

variable "engine" {
    description = "The database engine for the RDS instance"
    type        = string
}

variable "instance_class" {
    description = "The instance class for the RDS instance"
    type        = string
}

variable "db_name" {
    description = "The name of the database"
    type        = string
}

variable "db_username" {
    description = "The username for the database"
    type        = string
}

variable "db_password" {
    description = "The password for the database"
    type        = string
}