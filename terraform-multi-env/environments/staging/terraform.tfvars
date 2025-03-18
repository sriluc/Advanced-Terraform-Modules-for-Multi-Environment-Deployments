# environments/staging/terraform.tfvars
cidr_block = "10.1.0.0/16"
ami_id = "ami-0c55b159cbfafe1f0"
instance_type = "t2.medium"
storage_size = 50
engine = "mysql"
instance_class = "db.t2.medium"
db_name = "stagingdb"
db_username = "admin"
db_password = "stagingpassword123"