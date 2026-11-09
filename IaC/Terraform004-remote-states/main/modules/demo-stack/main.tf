# (EC2 instance)
resource "aws_instance" "demo_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  monitoring = var.enable_monitoring

  tags = {
    Name = var.instance_name
    Environment = var.environment
    Owner = "Terraform"
  }
}

# Create an IAM USER
resource "aws_iam_user" "demo_user" {
  name = var.iam_user_name

  tags = {
    purpose = var.iam_user_purpose
  }
}

# Create a S3 Bucket
resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_purpose
    Environment = var.environment
  }
}

# Enable versioning in S3 bucket
resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
  count = var.enable_versioning ? 1 : 0
  bucket = aws_s3_bucket.demo_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}







