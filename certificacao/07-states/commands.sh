terraform init

terraform apply -auto-approve

# lista os estados
terraform state list

# Exibe o conteudo de um state
terraform state show local_file.inicial

# Altera o nome de um recurso sem exclui-lo e recria-lo
terraform state mv local_file.inicial local_file.second
