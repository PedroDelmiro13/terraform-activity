variable "region" {
    description = "value"
    type = string
    nullable = false
    default = "sa-east-1"

    validation{
        condition = containers(["us-east-1" , "us-east-2", "sa-east-1"], var.region)
        error_message = "Erro: Esta variável aceita apenas os seguintes valores: us-east-1, ..."
    }
}