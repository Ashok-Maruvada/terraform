terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0" 
      #provider-version
    }
  }
}

provider "aws" {
    region = "us-east-1"
}