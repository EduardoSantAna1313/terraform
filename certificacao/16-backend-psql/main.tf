resource "local_file" "myfile" {
  filename = "bla.txt"
  content  = "123"
}

resource "local_sensitive_file" "second" {
  filename = "second.txt"
  content  = "second"
}

# First
output "filename" {
  value = local_file.myfile.filename
}

# Second
output "filename2" {
  value = local_sensitive_file.second.filename
}

