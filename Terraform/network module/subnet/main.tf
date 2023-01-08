data "aws_availability_zones" "azs" {}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.cidr_block[count.index]
  availability_zone = data.aws_availability_zones.azs.names[count.index]   
  count = 2

  tags = {
    Name = "public-sub"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.cidr_block[count.index]
  availability_zone = data.aws_availability_zones.azs.names[count.index]
  count = 2

  tags = {
    Name = "private-sub"
  }
}

resource "aws_subnet" "db" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.cidr_block[count.index]
  availability_zone = data.aws_availability_zones.azs.names[count.index]
  count = 2

  tags = {
    Name = "db-sub"
  }
}