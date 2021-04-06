terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  #access_key = ""
  #secret_key = ""
  # better to use EC2Role or sso login user 
}

data "aws_secretsmanager_secret" "dbs" {
  name = "db_secrets"
}

data "aws_secretsmanager_secret_version" "dbs" {
  secret_id = data.aws_secretsmanager_secret.dbs.id
  version_stage = "AWSCURRENT"
}

locals {
    account_json = jsondecode(data.aws_secretsmanager_secret_version.dbs.secret_string)
    sensitive = true
}

variable "region" {
    default = "us-east-1"
}

data "aws_secretsmanager_secret" "dbs" {
  name = "db_secrets"
}

data "aws_secretsmanager_secret_version" "dbs" {
  secret_id = data.aws_secretsmanager_secret.dbs.id
  version_stage = "AWSCURRENT"
}

locals {
    account_json = jsondecode(data.aws_secretsmanager_secret_version.dbs.secret_string)
    sensitive = true
}

variable "region" {
    default = "us-east-1"
}

output "id" {
    value = local.account_json["account_id"]
    sensitive = true   
}

output "pwd" {
    value = local.account_json["account_pw"]
    sensitive = true   
}
