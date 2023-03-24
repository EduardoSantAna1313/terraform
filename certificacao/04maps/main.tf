variable "names" {
  default = {
    dev = "desenvolvimento",
    stg = "stage"
    prd = "producao"
  }
}

resource "local_file" "myfile" {
  for_each = var.names
  filename = "${each.key}.txt"
  content  = each.value
}

output "files" {
  # usar os values do map de local_file.myfile
  value = values(local_file.myfile)[*].filename
}