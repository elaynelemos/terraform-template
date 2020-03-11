# ----------------------------------------------------------------------------------------------------------------------
# DEPLOY {{ cookiecutter.project_name.upper() }}
# ----------------------------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------

data "aws_region" "current" {}

terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  version = "~> 2.5"
}

# ----------------------------------------------------------------------------------------------------------------------
# STATE BUCKET WITH LOCKING IN DB
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  backend "s3" {
    encrypt  = true
    bucket  = "{{ cookiecutter.terraform_state_s3 }}"
    key     = "{{ cookiecutter.project_slug }}"
    region  = "{{ cookiecutter.aws_region }}"
    // dynamodb_table = "terraform-lock"
  }
}