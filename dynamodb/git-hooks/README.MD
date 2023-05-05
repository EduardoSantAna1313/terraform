Exemplo de hook prepare-commit-msg.

Realizar as seguintes validações:

`terraform fmt -check -recursive`

Se a formatação estiver errada ela é corrigida com o comando:

`terraform fmt -check -recursive`

Em seguida é realiza a validação do código com:

`terraform validate -no-color`

E por fim é gerado o plano:

`terraform plan -var-file=dev/terraform.tfvars`
