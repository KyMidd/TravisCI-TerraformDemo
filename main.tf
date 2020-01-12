# Require TF version to be same as or greater than 0.12.19
terraform {
  required_version = ">=0.12.19"
  /*
    backend "s3" {
      bucket         = "kyler-codebuild-demo-terraform-tfstate"
      key            = "terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "codebuild-dynamodb-terraform-locking"
      encrypt        = true
    }
  */
}

# Download AWS provider
provider "aws" {
  region  = "us-east-1"
  version = "~> 2.36.0"
/*
  assume_role {
    # Remember to update this account ID to yours
      role_arn     = "arn:aws:iam::718626770228:role/TerraformAssumedIamRole"
    session_name = "terraform"
  }
*/
}

# Build a VPC
resource "aws_vpc" "aws_vpc" {
  cidr_block = "10.50.0.0/16"

  tags = {
    Name = "TravisCiVpc"
  }
}
