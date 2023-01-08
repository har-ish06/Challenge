resource "aws_vpc" "vpc1" {
  cidr_block = var.cidr_block
  instance_tenancy = "default"
  tags = {
    Name = var.Name
  }
}