terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
  access_key = "AKIA3IPCEF7QDZLW5VX6"
  secret_key = "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"
}

data "archive_file" "init" {
  type        = "zip"
  source_dir  = var.source_dir
  output_path = var.output_path
}

resource "aws_lambda_function" "provisioner_lambda" {
  filename         = data.archive_file.init.output_path
  source_code_hash = data.archive_file.init.output_base64sha256
  function_name = var.function_name
  description = var.description
  role          = var.role
  handler       = var.handler
  runtime = var.runtime
  memory_size = var.memory_size
  timeout = var.timeout
  environment {
    variables = var.envs
  }
  tags = var.tags
}
