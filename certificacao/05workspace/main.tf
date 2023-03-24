variable "names" {
  default = {
    default = "ble"
    dev     = "develop"
    prod    = "main"
  }
}

locals {
  filename = lookup(var.names, terraform.workspace, "default")
}

resource "local_file" "myfile" {
  filename = "${local.filename}.txt"
  content  = "${local.filename}CONTEUDO"
}

output "saida" {
  value = local_file.myfile.filename
}