terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }
}

provider "aws" {
  # Configuration options  # we can configure the aws here, but when we push this code to git, it will be public so we 
                            # we configure aws on command line
}