terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    talos = {
      source  = "siderolabs/talos"
      version = "0.1.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      Project     = "Talos Kubernetes Cluster"
      Provisioner = "Terraform"
      Environment = "Testing"
    }
  }
}