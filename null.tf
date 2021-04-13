resource "null_resource" "null-1" {}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "printenv"
  }
}

resource "null_resource" "null0" {
  count = 100
  triggers = {
    value = "EXAMPLE"
  }
}

resource "null_resource" "null1" {
  count = 100
   triggers = {
    value = "EXAMPLE-2"
  }
}
