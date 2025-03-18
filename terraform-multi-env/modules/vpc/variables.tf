variable "cidr_block" {
    description = "The CIDR block for the VPC"
    type        = string
}

variable "env" {
    description = "The environment (dev, staging, prod)"
    type        = string
}