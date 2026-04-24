terraform {
  required_version = ">= 1.6.0"
}

provider "aws" {
  region = var.region
}

variable "region" {
  type    = string
  default = "us-east-1"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "platform" {
  bucket = "platform-control-${random_string.suffix.result}"
}
