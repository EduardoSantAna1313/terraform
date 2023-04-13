provider "local" {}

terraform {
  backend "pg" {
    conn_str = "postgres://psql:psql@localhost:5432/backend_223?sslmode=disable"
  }
}

variable "file_name" {
  
}

resource "local_file" "first" {
  filename = var.file_name
  content = file("./docker-compose.yml")
}