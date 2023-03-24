provider "local" {}

data "local_file" "foobar" {
  filename = "${path.module}/foo.bar"
}

resource "local_file" "myfile" {
  filename = "${data.local_file.foobar.filename}2"
  content  = "${data.local_file.foobar.content}teste123"

  # Executa o echo na maquina local de onde o apply foi feito
  provisioner "local-exec" {
    command = "echo ${local_file.myfile.filename}"
  }

  connection {
    type     = "ssh"
    user     = "root"
    password = var.root_password
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    command = "mkdir newfolder"
  }
}

output "outputmap" {
  value = zipmap([local_file.myfile.filename], [local_file.myfile.content_md5])
}