resource "aws_db_instance" "db" {
  engine = "postgres"
  engine_version = "14.2"
  multi_az = false
  identifier = var.name
  username = random_string.database_user.result
  password = random_password.database_password.result
  instance_class = "db.t3.micro"
  storage_type = "gp2"
  allocated_storage = "5"
  max_allocated_storage = "100"
  db_subnet_group_name = data.aws_subnets.db.name
  publicly_accessible = false
  vpc_security_group_ids = [ module.security_group.id ]
  db_name = "test_app"
  skip_final_snapshot = true
}
resource "random_string" "database_user" {
  length = 8
  special = false
  number = false
  upper = false
}
resource "random_password" "database_password" {
  length = 10
  special = true
  override_special = "_*!"
}