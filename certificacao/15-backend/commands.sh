# iniciar o backend do terraform local
terraform init

# Cria bucket para backend
# aws s3api create-bucket --bucket terraform-states-132312312

# migrar o state para um backend remoto
terraform init -migrate-state \
    -backend-config="bucket=terraform-states-132312312" \
    -backend-config="key=terraform.tfstate" \
    -backend-config="region=us-east-1" 

# Verificar na aws se o arquivo terraform.tfstate foi upado
aws s3 ls terraform-states-132312312

terraform plan

terraform apply -auto-approve

# State atualizado no bucket
aws s3 ls terraform-states-132312312

# Excluindo tudo
terraform destroy -auto-approve

# Remove the tfstate
aws s3 rm s3://terraform-states-132312312/terraform.tfstate

# Remove the bucket
aws s3api delete-bucket --bucket terraform-states-132312312