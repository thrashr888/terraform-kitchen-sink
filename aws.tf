
provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  state = "available"
}

output "AWS-AZs" {
  value = data.aws_availability_zones.available.names
}
