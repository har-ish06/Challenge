module "vpc" {
  source = "../network module/VPC"
}

module "subnet" {
  source = "../network module/subnet"
}

module "IGW" {
  source = "../network module/IGW"
}

module "NAT" {
  source = "../network module/NAT gateway"
}