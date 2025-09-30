
# AWS Infrastructure Deployment with Terraform

This project uses Terraform to provision and manage AWS infrastructure, including an S3 bucket for static website hosting.

## Prerequisites

- An AWS account with programmatic access (Access Key ID and Secret Access Key)
- AWS CLI installed and configured on your machine
- Terraform installed (v1.0 or later recommended)

## Setup Instructions

1. **Clone the repository:**
	```sh
	git clone <repo-url>
	cd terraform
	```

2. **Configure AWS Credentials:**
	Ensure your AWS credentials are set up using `aws configure` or by exporting environment variables:
	```sh
	export AWS_ACCESS_KEY_ID=your-access-key-id
	export AWS_SECRET_ACCESS_KEY=your-secret-access-key
	export AWS_DEFAULT_REGION=your-region
	```

3. **Initialize Terraform:**
	```sh
	terraform init
	```

4. **Review the execution plan:**
	```sh
	terraform plan
	```

5. **Apply the configuration:**
	```sh
	terraform apply
	```
	Or to auto-approve:
	```sh
	terraform apply -auto-approve
	```

6. **Destroy the infrastructure (when needed):**
	```sh
	terraform destroy
	```

## Project Structure

- `main.tf` – Main Terraform configuration
- `provider.tf` – AWS provider configuration
- `variables.tf` – Input variables
- `outputs.tf` – Output values

## Notes

- S3 bucket names must be globally unique. Update the bucket name in `variables.tf` if you encounter a BucketAlreadyExists error.

## Useful Links

- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Terraform CLI Documentation](https://developer.hashicorp.com/terraform/cli)

---
Feel free to customize this project to fit your infrastructure needs!
