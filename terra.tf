provider "aws" {
    access_key="AKIAZSWM55QLJR54YOPH"
    secret_key="45ZCV+p881qaZ/1lwpERTEbzAqCDh6tgkI2sqZ9m"
    region="us-east-2"
}

# resource "aws_kms_key" "example" {
#   description = "domain key"
# }

resource "aws_codeartifact_domain" "example" {
  domain         = "example"
#   encryption_key = aws_kms_key.example.arn
}

resource "aws_codeartifact_repository" "test" {
  repository = "example"
  domain     = aws_codeartifact_domain.example.domain
}