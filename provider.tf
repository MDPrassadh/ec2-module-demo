terraform {
  required_version = ">1.3.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
   
  backend "s3" {
    bucket = "modules-in-terraform"
    key    = "modules-key"
    region = "us-east-1"
    #use_lockfile = true
    dynamodb_table = "modules-lock"

  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}


# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.66.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
#   region = "us-east-1"
# }
