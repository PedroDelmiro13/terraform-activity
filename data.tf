# Consulta informacoes de um bucket S3 existente no projeto.
data "aws_s3_bucket" "bucket_existente" {
    bucket = aws_s3_bucket.meu_bucket.bucket
}

# Lista as zonas de disponibilidade ativas na regiao selecionada.
data "aws_availability_zones" "available" {
  state = "available"
}