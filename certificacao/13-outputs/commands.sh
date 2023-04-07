terraform init

terraform apply -auto-approve

# Exibe o state do resouce
terraform state local_file.myfile

# Exibe os outputs
echo "Exibindo todos os outputs"
terraform output

# Exibe o valor de apenas um output
echo "Exibindo o output filename"
terraform output filename

terraform destroy -auto-approve
