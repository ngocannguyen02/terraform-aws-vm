# terraform-aws-vm

Terraform for AWS EC2 provisioning

## Installation

```bash
brew install terraform
export AWS_ACCESS_KEY_ID="your_aws_access_key"
export AWS_SECRET_ACCESS_KEY="your_aws_secret_key"
```

## Usage

```terraform
terraform validate
terraform plan -var-file=test.tfvars
terraform apply -var-file=test.tfvars
terraform destroy -var-file=test.tfvars
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami\_owners | List of AMI owners | `list(string)` | n/a | yes |
| ami\_regex | List of regex pattern to find an AWS AMI | `list(string)` | n/a | yes |
| aws\_instance\_tag | AWS instance tag | `any` | n/a | yes |
| aws\_instance\_type | AWS instance type (https://aws.amazon.com/ec2/instance-types/) | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| instance\_ami | AWS instance AMI |
| instance\_id | AWS instance ID |
| instance\_type | AWS instance type |

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)