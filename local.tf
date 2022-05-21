resource "local_file" "jwsystem" {
    content  = var.conteudo2
    filename = "JWSystem.sh" 
}

data "local_file" "my-data" {
    filename = "JWSystem.sh"
}

output "data-source-result" {
    value = data.local_file.my-data.content
}

variable "conteudo2" {
    type = string
    default = "default teste"
}

output "id-do-arquivo" {
  value = resource.local_file.jwsystem.id
}

output "var" {
    value = var.conteudo2
}

output "chiken-egg" {
    value = sort(["🥚", "🐓"])
}

