variable "storage_size" {
    description = "The allocated storage size in GB"
    type        = number
}

variable "engine" {
    description = "The database engine (e.g., mysql, postgres)"
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

variable "env" {
    description = "The environment (dev, staging, prod)"
    type        = string
}