provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "cloudwithus-terraform-state-bucket-01"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}