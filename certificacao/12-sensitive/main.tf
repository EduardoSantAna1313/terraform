resource "local_file" "first" {
    filename = "output.txt"
    content = "secret"
}

output "out_name" {
    value = local_file.first.filename
    sensitive = true
}

output "out_content" {
  value = local_file.first.content
  sensitive = true
}