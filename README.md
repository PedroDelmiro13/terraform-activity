# Projeto Terraform com AWS


## Arquivos do projeto

- `main.tf`: configura o provedor AWS e cria o bucket S3.
- `variables.tf`: declara e valida a variavel de regiao.
- `terraform.tfvars`: informa a regiao usada neste ambiente.
- `data.tf`: consulta um bucket e as zonas de disponibilidade.
- `outputs.tf`: apresenta os dados principais depois da aplicacao.
- `.gitignore`: evita o versionamento do estado, cache e variaveis locais.

## Pre-requisitos

1. Instalar o Terraform.
2. Instalar a AWS CLI.
3. Ter uma conta AWS com permissao para consultar a identidade, listar zonas e criar buckets S3 (deve informar o cartão).
4. Escolher a regiao AWS em `terraform.tfvars`.

## Conexao com a Cloud AWS

A autenticacao pode ser configurada pela AWS CLI. No terminal, execute:

```text
aws configure
```

Informe a Access Key ID, a Secret Access Key, a regiao padrao e o formato de saida. As credenciais ficam no perfil local da AWS CLI; elas nao devem ser colocadas nos arquivos `.tf`, no `terraform.tfvars` ou no repositorio.

Tambem e possivel usar um perfil nomeado:

```text
aws configure --profile estudo
$env:AWS_PROFILE = "estudo"
```

No Linux ou macOS, a segunda linha pode ser:

```text
export AWS_PROFILE=estudo
```

O bloco `provider "aws"` le a regiao definida pela variavel `region`. O Terraform usa as credenciais disponibilizadas pela AWS CLI para se conectar ao ambiente Cloud.

## Processo de execucao

Na raiz do projeto:

```text
terraform init
terraform fmt
terraform plan
terraform apply
```

- `terraform init` baixa o provider AWS e prepara o diretorio de trabalho.
- `terraform fmt` padroniza a formatacao HCL.
- `terraform plan` mostra as alteracoes sem cria-las.
- `terraform apply` solicita confirmacao e cria o bucket.
- `terraform output` exibe os valores definidos em `outputs.tf`.
- `terraform destroy` remove os recursos criados quando o exercicio terminar.

O bucket utilizado na atividade possui o nome definido no recurso de [main.tf](main.tf). Em uma conta AWS real, confirme se esse nome esta disponivel, pois nomes de buckets S3 precisam ser globalmente unicos.

## O que foi aprendido em aula

- Providers conectam o Terraform ao servico Cloud escolhido.
- Variables permitem reutilizar configuracoes sem duplicar codigo.
- Resources descrevem os objetos que o Terraform deve criar e gerenciar.
- Data sources consultam informacoes existentes na AWS sem criar novos recursos.
- Outputs facilitam a visualizacao e o reaproveitamento de valores gerados.

