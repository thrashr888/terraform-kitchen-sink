
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_count" {
  description = "Number of instances to provision."
  type        = number
  default     = 2
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "s3_website_bucket" {
  description = "The bucket name for your S3 website."
  type        = string
  default     = "terraform-kitchen-sink-example"
}
