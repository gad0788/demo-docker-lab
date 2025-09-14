terraform {
  backend "s3" {
    bucket       = "remote-gn-terrraform"
    key          = "demo-docker/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
   # use_lockfile = false
  }
    required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}