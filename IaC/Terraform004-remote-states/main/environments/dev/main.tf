module "demo-stack" {
  source            = "../../modules/demo-stack"
  aws_region        = var.aws_region
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  instance_name     = var.instance_name
  enable_monitoring = var.enable_monitoring
  bucket_name       = var.bucket_name
  bucket_purpose    = var.bucket_purpose
  enable_versioning = var.enable_versioning
  environment       = var.environment
  iam_user_name     = var.iam_user_name
  iam_user_purpose  = var.iam_user_purpose
}

output "ec2_public_ip" {
  value = module.demo-stack.ec2_public_ip
}
output "ec2_private_ip" {
  value = module.demo-stack.ec2_private_ip
}
output "ec2_instance_arn" {
  value = module.demo-stack.ec2_instance_arn
}

output "ec2_instance_id" {
  value = module.demo-stack.ec2_instance_id
}

output "s3_bucket_name" {
  value = module.demo-stack.s3_bucket_name
}

output "iam_user_name" {
  value = module.demo-stack.iam_user_name
}

output "iam_user_arn" {
  value = module.demo-stack.iam_user_arn
}