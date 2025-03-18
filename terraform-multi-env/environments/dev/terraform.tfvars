# environments/dev/terraform.tfvars
cidr_block = "10.0.0.0/16"
ami_id = "ami-0c55b159cbfafe1f0"
instance_type = "t2.micro"
storage_size = 20
engine = "mysql"
instance_class = "db.t2.micro"
db_name = "devdb"
db_username = "admin"
db_password = "devpassword123"