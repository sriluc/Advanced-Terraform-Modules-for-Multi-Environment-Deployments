# modules/rds/main.tf
resource "aws_db_instance" "default" {
    allocated_storage    = var.storage_size
    engine              = var.engine
    engine_version      = "5.7" # Specify the engine version for MySQL
    instance_class      = var.instance_class
    name                = var.db_name
    username            = var.db_username
    password            = var.db_password
    skip_final_snapshot = true
    publicly_accessible = false # Ensure the RDS instance is not publicly accessible
    tags = {
        Name = "${var.env}-rds-instance"
    }
}