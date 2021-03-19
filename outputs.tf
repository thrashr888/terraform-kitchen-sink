
## GITHUB
output "hashicorp_github_plan" {
  value = data.github_organization.hashicorp.plan
  description  = "hashicorp's github org plan. the only organization attr available."
}

output "current_github_login" {
  value = data.github_user.current.login
  description  = "current github user login"
}

output "terraform_description" {
  value = data.github_repository.terraform.description
  description  = "what is terraform about?"
}

output "terraform_topics" {
  value = data.github_repository.terraform.topics
  description  = "what is terraform about?"
}

## RANDOM
output "random" {
  value = random_id.random.hex
  description  =  "a random hex output"
}

## TYPES
output "a-true-bool" {
  value       = true
  description = "The true of the main server instance."
}

output "escapes" {
  value       = "line 1\nline 2\n\\\\\\\\\n"
  description = "The true of the main server instance."
}

output "a-false-bool" {
  value       = false
  description = "The false of the main server instance."
}

output "a-string" {
  value       = "example string"
  description = "The private string of the main server instance."
}

output "an-int" {
  value       = 1001
  description = "The private integer of the main server instance."
}

output "a-decimal" {
  value       = 1000.1
  description = "The private decimal of the main server instance."
}

output "a-list" {
  value       = ["example", 1001, 1000.1]
  description = "The private integer of the main server instance."
}

output "a-map" {
  value       = { "example" : 1001, "bar" : 1000.1 }
  description = "The private integer of the main server instance."
}

output "a-long-string" {
  value       = "The private integer of the main server instance is where you want to go when you have the most fun in every Terraform instance you can see in the world that you live in except for dogs because they don't run servers in the same place that humans do."
  description = "A long string is good for you."
}

output "a-sensitive-value" {
  value       = "hopefully you cannot see me"
  description = "The sensitive string of the main server instance."
  sensitive   = true
}
