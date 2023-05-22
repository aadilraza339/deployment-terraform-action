provider "aws" {
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "stack-test-339"
    key    = "eu-west-1/tfstate.json"
    region = "ap-south-1"
    dynamodb_table = "aws-test-table"
    encrypt = true
  }
}

resource "random_id" "id" {
  byte_length = 2
}
