module "vpc" {
    source = "../../modules/vpc"
    cidr_block = "10.0.0.0/16"
    env = "dev"
}

module "ec2" {
    source = "../../modules/ec2"
    ami_id = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    subnet_id = module.vpc.public_subnet_id
    env = "dev"
}