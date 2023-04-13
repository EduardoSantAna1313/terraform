provider "local" {}

resource "local_file" "myfile" {
  filename = "../out1.txt"
  content = "out1"
}