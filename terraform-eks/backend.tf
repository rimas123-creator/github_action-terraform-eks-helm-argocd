provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "cloudwithus-terraform-state-bucket"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}