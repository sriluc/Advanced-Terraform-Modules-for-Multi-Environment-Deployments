resource "aws_vpc" "main" {
    cidr_block = var.cidr_block
    tags = {
        Name = var.env
    }
}

resource "aws_subnet" "public" {
    vpc_id     = aws_vpc.main.id
    cidr_block = cidrsubnet(var.cidr_block, 8, 1)
    tags = {
        Name = "${var.env}-public-subnet"
    }
}