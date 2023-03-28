provider "local" {

}

provider "local" {
  alias = "another"
}

resource "local_file" "first" {
  filename = "teste1.txt"
  content = "teste1"
}

# Criara o resource com o segundo provider
# Necessário referenciar o segundo provider provider.alias
resource "local_file" "second" {
  filename = "teste2.txt"
  content = "teste2"
  provider = local.another
}