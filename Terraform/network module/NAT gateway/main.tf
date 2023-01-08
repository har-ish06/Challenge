resource "aws_eip" "aws_eip" {
  tags = {
    Name = var.Name
  }
}
resource "aws_nat_gateway" "aws_nat_gateway" {
  allocation_id = aws_eip.aws_eip.id
  subnet_id = var.subnet_id
  tags = {
    Name = var.Name
  }
}