terraform {
  backend "s3" {
    bucket = "tfstate"
    key = "challenge/terraform.tfstate"
    region = "us-east-1"
  }
}