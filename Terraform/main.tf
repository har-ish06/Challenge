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
module "web" {
  source = "../App/web"
}
module "NAT" {
  source = "../App/app"
}
module "db" {
  source = "../DB"
}