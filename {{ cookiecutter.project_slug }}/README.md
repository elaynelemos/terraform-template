# {{ cookiecutter.project_name }}

{{ cookiecutter.project_description }}

Below is a brief explanation of what we have generated for you using [infra template](https://github.com/flow-lab/infra-template):

```shell
.
├── .github                         <-- GitHub Actions for Terraform
├── variables.tf                    <-- Terraform variables
├── main.tf                         <-- Terraform provider and state
.
```

## Requirements

Terraform s3 state bucket has to be already created.

[GitHub Actions](./github/workflows/) requires GitHub Secrets for the project:

* AWS_ACCESS_KEY_ID - service user key id
* AWS_SECRET_ACCESS_KEY - service user access key

## Deploy

After push to master branch GitHub Action will run [terraform.tf](./github/workflows/terraform.tf) Format, Init, Validate, Plan, and Apply.

In case there is a new Pull Request created GitHub Actions will run [terraform-pr.yml](./github/workflows/terraform.tf) Format, Init, Validate, and Plan and commment on it what will get changed if merged.


License
-------
[![License: MPL 2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://opensource.org/licenses/MPL-2.0)