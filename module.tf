
module "example" {
  source = "./module"
  name   = "test example"
}


locals {
  names = {
    "ice_cream" = {
      temp = "cold"
    }
    "cookie" = {
      temp = "warm"
    }
  }
}

module "deserts" {
  source   = "./desert"
  for_each = local.names

  name = module.example.name
  temp = each.value.temp
}

module "cookie" {
  source = "./desert"
  count  = 12

  name = "chocolate chip"
  temp = "warm"
}

output "a_dozen_cookies" {
  value = { for k, m in module.cookie : k => m.everything }
}

output "all_of_it" {
  value = { for k, m in module.deserts : k => m.everything }
}