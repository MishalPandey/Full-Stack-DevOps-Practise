variable "aws_region" {
  type = string
  description = "AWS region"
}

variable "ami_id" {
  type = string
  description = "AMI ID for the EC2 instance"
}

variable "environment" {
  type = string
  description = "Environment Name"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
  default = "t3.micro"
}

variable "enable_monitoring" {
  type = bool
  description = "EC2 instance monitoring"
  default = false

}

variable "instance_name" {
  type = string
  description = "EC2 instance Name"
  default = "mishal-instance"

}

variable "iam_user_name" {
  type = string
  description = "Name for the IAM user"
}

variable "iam_user_purpose" {
  type = string
  description = "Purpose for the IAM user"
}

variable "bucket_name" {
  type = string
  description = "Name for the S3 bucket"
}
variable "bucket_purpose" {
  type = string
  description = "Purpose for the S3 bucket"
}

variable "enable_versioning" {
  type = bool
  description = "Enable versioning for the S3 bucket"
}
