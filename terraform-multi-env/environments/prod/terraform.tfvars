# environments/prod/terraform.tfvars
cidr_block = "10.2.0.0/16"
ami_id = "ami-0c55b159cbfafe1f0"
instance_type = "t2.large"
storage_size = 100
engine = "mysql"
instance_class = "db.t2.large"
db_name = "proddb"
db_username = "admin"
db_password = "prodpassword123"