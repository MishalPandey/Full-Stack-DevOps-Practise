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