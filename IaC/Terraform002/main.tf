terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.72.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}


# Resource block

# (EC2 instance)
resource "aws_instance" "demo_ec2" {
  ami           = "ami-0f19324397f53458f"
  instance_type = var.instance_type
  monitoring = var.enable_monitoring

  tags = {
    Name = var.instance_name
  }
}

# Create an IAM USER
resource "aws_iam_user" "demo_user" {
  name = "terraform-demo-user"

  tags = {
    purpose = "terraform-demo"
  }
}

# Create a S3 Bucket
resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-tf-test-bucket-77038784"

  tags = {
    Name        = "terraform-demo"
    Environment = "demo"
  }
}

# Enable versioning in S3 bucket
resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
  bucket = aws_s3_bucket.demo_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}







