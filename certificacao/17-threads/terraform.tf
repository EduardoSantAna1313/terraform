provider "local" {}

resource "local_file" "name" {
  filename = "bla.txt"
  content  = ""
}