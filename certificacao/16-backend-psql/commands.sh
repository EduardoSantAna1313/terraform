docker-compose up -d

terraform init

terraform apply -auto-approve

# lista os states
terraform state list

# exibe o state do resource criado
terraform state show local_file.myfile

terraform state show local_file.myfile

terraform output filename

terraform destroy -auto-approve

