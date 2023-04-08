terraform {
  backend "pg" {
    # passar a conn_str via terrform init
    # conn_str = "postgres://psql:psql@localhost:5432/terraform_backend?sslmode=disable"
  }
}
