terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.29.1"
    }

    github = {
      source  = "integrations/github"
      version = "4.5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}
