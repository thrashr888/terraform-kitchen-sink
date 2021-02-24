
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

output "an-ip-address" {
  value       = "127.0.0.1"
  description = "The private url of the local server instance."
}

output "a-consul-domain" {
  value       = "redis.consul:6379"
  description = "The consul url of the main db instance."
}

output "a-url" {
  value       = "https://sub.domain.com:8080/path?query=val&2=1#h1"
  description = "The private url of the main server instance."
}

output "an-ftp-url" {
  value       = "ftp://sub.domain.com:8081/path?query=val&2=1"
  description = "The private ftp url of the main server instance."
}

output "an-ssh-url" {
  value       = "ssh://git@github.com:thrashr888/terraform-outputs.git"
  description = "The private ssh url of the main server instance."
}

output "a-bash-command" {
  value       = "gh repo clone thrashr888/terraform-random"
  description = "The private command of the main server instance."
}

output "a-long-string" {
  value       = "The private integer of the main server instance is where you want to go when you have the most fun in every Terraform instance you can see in the world that you live in except for dogs because they don't run servers in the same place that humans do."
  description = "A long string is good for you."
}

output "a-long-unbroken-string" {
  value       = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
  description = "A long, unbroken string is good for you."
}

output "a-big-int" {
  value       = 1234567890
  description = "A big int is good for you."
}

output "a-big-decimal" {
  value       = 1234567890.0987654321
  description = "A big decimal is good for you."
}

output "empty-string" {
  value       = ""
  description = "Empty string ''"
}

output "empty-number" {
  value       = 0
  description = "Empty 0"
}

output "empty-list" {
  value       = []
  description = "Empty []"
}

output "empty-map" {
  value       = {}
  description = "Empty {}"
}

output "a-token" {
  value       = "233b604b-b92e-48c8-a253-5f11514e4b50"
  description = "A token is good for you."
}

output "a-sensitive-value" {
  value       = "hopefully you cannot see me"
  description = "The sensitive string of the main server instance."
  sensitive   = true
}

output "a-sensitive-number" {
  value       = 867.5309
  description = "The sensitive number of the main server instance."
  sensitive   = true
}

output "a-sensitive-list" {
  value       = [867, 5309]
  description = "The sensitive list of the main server instance."
  sensitive   = true
}

output "a-sensitive-map" {
  value       = { 867 : 5309 }
  description = "The sensitive map of the main server instance."
  sensitive   = true
}

output "html" {
  value = "<b>BOLD TEXT</b>"
}

output "markdown" {
  value = "*BOLD TEXT*"
}

output "html-script" {
  value = "<script>alert('hacked');</script>"
}

output "javascript" {
  value = "alert('hacked');"
}

output "a-long-list" {
  value       = ["example", 1001, 1000.1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "DUPE The private integer of the main server instance is where you want to go when you have the most fun in every Terraform instance you can see in the world that you live in except for dogs because they don't run servers in the same place that humans do."]
  description = "A long string is good for you."
}

output "a-long-string-and-title-how-long-do-you-think-these-things-can-get-before-it-breaks-something-i-dont-know-the-answer-do-you" {
  value       = "DUPE The private integer of the main server instance is where you want to go when you have the most fun in every Terraform instance you can see in the world that you live in except for dogs because they don't run servers in the same place that humans do."
  description = "A long string is good for you."
}
