output "nome_do_bucket" {
  value = aws_s3_bucket.meu_bucket.bucket
}

output "id_do_bucket" {
    value = aws_s3_bucket.meu_bucket.id
}

output "informacao_data" {
  value = data.meu_data
}

output "aws_availability_zones" {
  value = data.aws_availability_zones.available
}