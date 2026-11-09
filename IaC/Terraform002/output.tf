output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value = aws_instance.demo_ec2.public_ip
}

output "ec2_instance_id" {
  description = "Instance ID of the EC2 instance"
  value = aws_instance.demo_ec2.id
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value = aws_s3_bucket.demo_bucket.bucket

}

output "iam_user_name" {
  description = "Name of the IAM user"
  value = aws_iam_user.demo_user.name
}