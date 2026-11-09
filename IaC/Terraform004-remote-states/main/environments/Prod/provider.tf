terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-770386273"
    key    = "prod/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.72.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}