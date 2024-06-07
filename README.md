# Terraform AWS Infrastructure

This project contains Terraform scripts to provision and manage AWS resources.

## Project Structure

- `variables.tf`: Contains the declaration of variables used in the Terraform scripts.
- `autoscaling.tf`: Contains the configuration for the AWS Auto Scaling group.
- `ec2.tf`: Contains the configuration for the AWS EC2 instances.
- `elastic_load_balancer.tf`: Contains the configuration for the AWS Elastic Load Balancer.
- `launch_template.tf`: Contains the configuration for the AWS Launch Template.
- `main.tf`: Contains the main configuration for the Terraform scripts.
- `outputs.tf`: Contains the outputs of the Terraform scripts.
- `securitygroup.tf`: Contains the configuration for the AWS Security Group.
- `user-data-az.sh`: Contains the user data script for the EC2 instances.
- `variables.tfvars`: Contains the values for the variables declared in `variables.tf`.

## Prerequisites

- Terraform v1.0.0 or later
- AWS CLI v2 or later

## Usage

1. Clone the repository.
2. Navigate to the project directory.
3. Initialize the Terraform scripts:

```sh
terraform init
```

4. Validate the Terraform scripts:

```sh
terraform validate
```

5. Plan the Terraform scripts:

```sh
terraform plan -var-file=variables.tfvars
```

6. Apply the Terraform scripts:

```sh
terraform apply -var-file=variables.tfvars
```
