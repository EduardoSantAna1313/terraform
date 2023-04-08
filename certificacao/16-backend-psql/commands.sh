docker-compose up -d

terraform init \
    -backend-config="conn_str=postgres://psql:psql@localhost:5432/terraform_backend?sslmode=disable"

terraform apply -auto-approve

# lista os states
terraform state list

# exibe o state do resource criado
terraform state show local_file.myfile

terraform state show local_file.myfile

terraform output filename

terraform destroy -auto-approve

