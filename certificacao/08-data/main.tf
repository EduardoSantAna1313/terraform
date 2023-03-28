# load the file data.txt and its content
data "local_file" "local" {
  filename = "data.txt"
}

# create a copy file with the content from the file loaded
resource "local_file" "copy" {
  filename = "copy.txt"
  content  = data.local_file.local.content
}