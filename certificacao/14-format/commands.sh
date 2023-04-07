terraform init

# Exibe apenas o diff da formatação de forma recursiva no diretorio
terraform fmt -recursive -diff

# Verifica se todos os arquivos estao formatados corretamente
terraform fmt -recursive -check

terraform plan -var-file=hom/parameters.json -out "homplan"

terraform apply "homplan"

terraform destroy -var-file=hom/parameters.json -auto-approve