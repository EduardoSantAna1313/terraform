module "constant_file" {
  source = "./modules/constant"
}

module "dynamic_file" {
  source = "./modules/dynamic"
  file_name = "dynamicfile.txt"
  content = file("./conteudo.json")
}

output "created" {
  value = module.constant_file
}

output "dynamic_file" {
  value = module.dynamic_file.name
}