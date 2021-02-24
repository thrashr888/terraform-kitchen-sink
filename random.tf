resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}
