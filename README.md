# Terraform Bastion Host

This Terraform configuration creates an EC2 instance that can be used as a Bastion Host in an existing VPC with public subnets. It provisions a single EC2 instance and applies a security group that allows SSH access to the instance from specified IP ranges.

## Requirements

- Terraform 1.x or above
- AWS account with necessary permissions
- Existing VPC with public subnets

## Variables

The following input variables are required to be defined in the `terraform.tfvars` file or via the command line:

| Variable                | Description                                                                                     | Type              | Default Value      |
|-------------------------|-------------------------------------------------------------------------------------------------|-------------------|--------------------|
| `aws_region`            | The AWS region where resources will be provisioned (e.g., `us-east-1`).                          | `string`          | `us-east-1`        |
| `vpc_id`                | The ID of the existing VPC where the Bastion Host will be deployed.                              | `string`          | **Required**       |
| `public_subnet_id`      | The ID of the public subnet to deploy the Bastion Host.                                          | `string`          | **Required**       |
| `ami`                   | The AMI ID for the EC2 instance (e.g., an Amazon Linux 2 AMI).                                   | `string`          | **Required**       |
| `key_name`              | The name of the SSH key pair to associate with the EC2 instance.                                | `string`          | **Required**       |
| `allowed_cidr_blocks`  | A list of CIDR blocks allowed to SSH into the Bastion Host (e.g., your IP or a restricted range).| `list(string)`    | `["0.0.0.0/0"]`    |

### Example:

Here’s an example of how to define the variables in your `terraform.tfvars` file:

```hcl
aws_region         = "us-east-1"
vpc_id             = "vpc-xxxxxxxx"
public_subnet_id   = "subnet-xxxxxxxx"
ami                = "ami-xxxxxxxx"   # e.g., an Amazon Linux 2 AMI
key_name           = "your-key-name"
allowed_cidr_blocks = ["your.ip.address/32"]  # restrict SSH access as needed
```

## Setup Instructions

### 3. Initialize Terraform
Initialize your Terraform configuration by running the following command:

```bash
terraform init
```

### 4. Review the Plan
Before applying the changes, review what Terraform plans to create by running:

```bash
terraform plan
```

### 5. Apply the Configuration
To create the Bastion Host and other resources, apply the configuration with:

```bash
terraform apply
```
