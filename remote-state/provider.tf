terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0" 
      #provider-version
    }
  }
  backend "s3" {
    # bucket name will be the AWS bucket name created in AWS
    bucket = "devops-ashok"
    # key name is to specify remote state files in aws- change the key name according to infra creation
    key    = "use-remote-state"
    region = "us-east-1"
    #dynamodb table name created in AWS
    dynamodb_table = "ashok-locking"
  }
}

provider "aws" {
    region = "us-east-1"
}