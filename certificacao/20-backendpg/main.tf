provider "local" {}

terraform {
  backend "pg" {
    # passar a conn_str via terrform init
    conn_str = "postgres://psql:psql@localhost:5432/backend_20?sslmode=disable"
  }
}

resource "local_file" "secondback" {
  filename = "test.json"
  content = "vla"
}