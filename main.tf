# Bloco de configuracao do provedor AWS usado pelo projeto.
provider "aws" {
region = var.region
}

# Recurso que cria o bucket S3 utilizado na atividade.
resource "aws_s3_bucket" "meu_bucket" {
    bucket = "test-aponti"
} 