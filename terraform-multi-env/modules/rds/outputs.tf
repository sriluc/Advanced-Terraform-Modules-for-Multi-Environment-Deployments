output "rds_endpoint" {
    description = "The endpoint of the RDS instance"
    value       = aws_db_instance.default.endpoint
}