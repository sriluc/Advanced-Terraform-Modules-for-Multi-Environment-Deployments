variable "ami_id" {
    description = "The AMI ID for the EC2 instance"
    type        = string
}

variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type        = string
}

variable "subnet_id" {
    description = "The subnet ID for the EC2 instance"
    type        = string
}

variable "env" {
    description = "The environment (dev, staging, prod)"
    type        = string
}