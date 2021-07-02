terraform {
  required_version = ">= {{ cookiecutter.terraform_version }}"

  backend "s3" {
    bucket = "{{ cookiecutter.terraform_state_s3 }}"
    key    = "{{ cookiecuter.project_slug }}/terraform.tfstate"
    region = ""

    dynamodb_table = ""
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> {{ cookiecutter.aws_version }}"
    }
  }
}

provider "aws" {
  region = "{{ cookiecutter.aws_region }}"
}

resource "aws_instance" "example" {
  name = "{{ cookiecuter.project_slug }}"
}
