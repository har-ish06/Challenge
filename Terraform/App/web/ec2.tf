resource "aws_instance" "web" {
  ami           = var.imageid
  instance_type = var.instancetype
  key_name = aws_key_pair.key_pair.key_name
  subnet_id = module.subnet.public[count.index].id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true
  count = 2

  tags = {
    Name = var.Name
  }
}

provider "tls" {} # use to generate keypair

resource "tls_private_key" "key_name" {
  algorithm = "RSA"
  rsa_bits  = "2048"
}

resource "aws_key_pair" "key_pair" {
  key_name   = var.name
  public_key = tls_private_key.key_name.public_key_openssh
}