data "aws_region" "current" {}

provider "aws" {
}

terraform {
  backend "s3" {
    bucket = "{{ cookiecutter.terraform_state_s3 }}"
    key    = "{{ cookiecutter.project_slug }}"
    region = "{{ cookiecutter.aws_region }}"
  }
}