# Require TF version to be same as or greater than 0.12.19
terraform {
  required_version = ">=0.12.19"
}

# Download AWS provider
provider "aws" {
  region  = "us-east-1"
  version = "~> 2.36.0"
}

# Build a VPC
resource "aws_vpc" "aws_vpc" {
  cidr_block = "10.50.0.0/16"

  tags = {
    Name = "TravisCiVpc"
  }
}
