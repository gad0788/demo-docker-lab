terraform {
  backend "s3" {
    bucket       = "remote-gn-terrraform"
    key          = "demo-docker/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
   # use_lockfile = false
  }
  
}