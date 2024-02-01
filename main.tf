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
  region = "eu-west-3"
  access_key = "AKIA33MANHPNZEQ6PXC5"
  secret_key = "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"
}

resource "aws_s3_bucket" "mt4-samuel" {
  bucket = "mt4-samuel"
  tags = {
    Name = "mt4-samuel"
    Environment = "Dev"
  }
}