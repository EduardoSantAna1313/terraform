provider "local" {}

resource "local_file" "myfile" {
  filename = "../out1.txt"
  content  = "out1"
}


resource "local_file" "myfile2" {
  filename = "../out2.txt"
  content  = "out2"
}