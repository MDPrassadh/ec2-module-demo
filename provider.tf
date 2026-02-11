terraform {
  required_version = ">1.3.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
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