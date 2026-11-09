# Terraform block
#   This block tells Terraform:
#     1. Which providers are required
#     2. Where to download them from
#     3. The version of Terraform to use
# https://registry.terraform.io/providers/hashicorp/aws/latest

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.72.0"
    }
  }
}

# Provider configuration
# This tells Terraform:
#   -Which cloud to talk to (AWS)
#   -Which region to create resource in
provider "aws" {
  region = "ap-south-1"
}


# # Resource block (EC2 instance)
# # This block tells Terraform:
# #   1. What resource to create (EC2 instance)
# #   2. The configuration of the resource (AMI, instance type, tags)
# resource "aws_instance" "demo_ec2" {
#   ami           = "ami-0f19324397f53458f"
#   instance_type = "t3.micro"
#
#   tags = {
#     Name = "terraform-demo"
#   }
# }
# # demo_ec2 is name inside terraform
# # terraform-demo is name on AWS dashboard for this EC2 instance





# # Create an IAM USER
#
# resource "aws_iam_user" "demo_user" {
#   name = "terraform-demo-user"
#
#   tags = {
#     purpose = "terraform-demo"
#   }
# }





# # Create a S3 Bucket
# resource "aws_s3_bucket" "demo_bucket" {
#   bucket = "my-tf-test-bucket-77038784"
#
#   tags = {
#     Name        = "terraform-demo"
#     Environment = "demo"
#   }
# }




# # Enable versioning in S3 bucket
# # aur yaha uper wale naam demo_bucket ko use kar rhe kyuki terraform usko ussi naam se jaanta aur aws me terraform-demo naam se
# # create hua hoga.
# resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
#   bucket = aws_s3_bucket.demo_bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }





# # Variables in Terraform
# variable "instance_type" {
#   type = string
#   description = "EC2 instance type"
# }
#
# # create an EC2 instance with using variable
# resource "aws_instance" "demo_ec2" {
#   ami           = "ami-0f19324397f53458f"
#   # instance_type = "t3.micro"
#   instance_type = var.instance_type
#
#   tags = {
#     Name = "terraform-demo"
#   }
# }



# # Variables in Terraform with as well its default value
# variable "instance_type" {
#   type = string
#   description = "EC2 instance type"
#   default = "t3.micro"
#   #   default value dena ke ke baad terraform plan me puchhta nhi instance type varibale ki value yeh
# }
#
# # create an EC2 instance with using variable
# resource "aws_instance" "demo_ec2" {
#   ami           = "ami-0f19324397f53458f"
#   # instance_type = "t3.micro"
#   instance_type = var.instance_type
#
#   tags = {
#     Name = "terraform-demo"
#   }
# }



# # multiple variables in Terraform with as well its default value
# variable "instance_type" {
#   type = string
#   description = "EC2 instance type"
#   default = "t3.micro"
# }
#
# variable "enable_monitoring" {
#   type = bool
#   description = "EC2 instance monitoring"
#   default = false
#
# }
#
# variable "instance_name" {
#   type = string
#   description = "EC2 instance Name"
#   default = "mishal-instance"
#
# }
#
#
# # create an EC2 instance with using variable
# resource "aws_instance" "demo_ec2" {
#   ami           = "ami-0f19324397f53458f"
#   # instance_type = "t3.micro"
#   instance_type = var.instance_type
#   monitoring = var.enable_monitoring
#
#   tags = {
#     Name = var.instance_name
#   }
# }
#




# Output in Terraform
# output "ec2_public_ip" {
#   description = "Public IP of the EC2 instance"
#   value = aws_instance.demo_ec2.public_ip
# }


