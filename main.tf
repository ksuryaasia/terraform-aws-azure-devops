terraform {
  backend "s3" {
    bucket         = "c3ops.io"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# VPC, Subnets, NAT, SGs – (your existing code goes here)
