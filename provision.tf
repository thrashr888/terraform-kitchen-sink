resource "null_resource" "provision" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "sleep 2"
  }

  provisioner "local-exec" {
    command = "ls -l"
  }
}
