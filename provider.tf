terraform { 
  cloud { 
    
    organization = "raji2003" 

    workspaces { 
      name = "terrform-cloud" 
    } 
  } 
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
      aws = {
      source = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}