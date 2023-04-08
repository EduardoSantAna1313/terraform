terraform {
  backend "pg" {
    conn_str = "postgres://psql:psql@localhost:5432/terraform_backend?sslmode=disable"
  }
}