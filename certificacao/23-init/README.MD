O comando `terraform init` realiza conexão com o backend, por isso é necessário inicializar o pg antes.

Não há validação de sintaxe como no comando `terraform validade`

Quando há alteração na configuração do backend é necessário rodar `terraform init -reconfigure`