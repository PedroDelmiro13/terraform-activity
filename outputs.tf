# Retorna o nome do bucket criado pelo recurso principal.
output "nome_do_bucket" {
  value = aws_s3_bucket.meu_bucket.bucket
}

# Retorna o ID do bucket para consulta posterior.
output "id_do_bucket" {
    value = aws_s3_bucket.meu_bucket.id
}

# Retorna informacoes consultadas por um data source da atividade.
output "informacao_data" {
  value = data.meu_data
}

# Retorna as zonas de disponibilidade encontradas na regiao.
output "aws_availability_zones" {
  value = data.aws_availability_zones.available
}