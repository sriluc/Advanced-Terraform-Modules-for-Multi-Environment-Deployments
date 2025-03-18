# environments/staging/main.tf
module "vpc" {
    source = "../../modules/vpc"
    cidr_block = var.cidr_block
    env = "staging"
}

module "ec2" {
    source = "../../modules/ec2"
    ami_id = var.ami_id
    instance_type = var.instance_type
    subnet_id = module.vpc.public_subnet_id
    env = "staging"
}

module "rds" {
    source = "../../modules/rds"
    storage_size = var.storage_size
    engine = var.engine
    instance_class = var.instance_class
    db_name = var.db_name
    db_username = var.db_username
    db_password = var.db_password
    env = "staging"
}