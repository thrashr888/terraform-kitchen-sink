
provider "github" {
}

data "github_organization" "hashicorp" {
  name = "hashicorp"
}

data "github_user" "current" {
  username = ""
}

data "github_repository" "terraform" {
  full_name = "hashicorp/terraform"
}