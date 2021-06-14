terraform {
  backend "http" {}

  required_providers{
    "aws" {
      source  = "hashicorp/aws"
      version = "~> {{ cookiecutter.aws_version }}"
    }
  }
}

provider "aws" {
  alias  = "{{ cookiecutter.aws_region.replace('-', '_') }}"
  region = "{{ cookiecutter.aws_region }}"
}
