variable "region" {
  description = "Regiao que sera provisionado"
  type        = string
  default     = "us-east-1"
}

variable "source_dir" {
  description = "Pasta origem para realizar o zip da funcao"
  type        = string
  default     = "function/src/bin/Debug/net6.0"
}

variable "output_path" {
  description = "Pasta destino do arquivo compactado"
  type        = string
  default     = "function/src/bin/Debug/net6.0/exemplodotnet.zip"
}

variable "function_name" {
  description = "Nome da Funcao"
  type        = string
  default     = "exemplodotnet"
}

variable "description" {
  description = "Descricao da Funcao"
  type        = string
  default     = "exemplodotnet"
}

variable "role" {
  description = "Role de permissao da Funcao"
  type        = string
  default     = "arn:aws:iam::774105214944:role/iam_for_lambda"
}

variable "handler" {
  description = "Role de permissao da Funcao"
  type        = string
  default     = "ExemploDotnet::ExemploDotnet.Function::FunctionHandler"
}

variable "runtime" {
  description = "Role de permissao da Funcao"
  type        = string
  default     = "dotnet6"
}

variable "memory_size" {
  description = "Quantidade de memoria Ram da Funcao"
  type        = number
  default     = "512"
}

variable "timeout" {
  description = "Timeout da Funcao"
  type        = number
  default     = "60"
}

variable "envs" {
  description = "Variaveis de ambiente"
  type        = map(string)
}

variable "tags" {
  description = "Tags de ambiente"
  type        = map(string)
}