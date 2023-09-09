# Terraform AWS Environment Infrastructure

This Git repository contains Terraform code to deploy AWS infrastructure for different work environments, such as dev, prod, and stg. It includes resources like EC2 instances, S3 buckets, and other infrastructure components. This README provides an overview of the project and instructions for deploying and managing the infrastructure.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Getting Started](#getting-started)
3. [Project Structure](#project-structure)
4. [Terraform Configuration](#terraform-configuration)
5. [Deployment](#deployment)
6. [Managing the Infrastructure](#managing-the-infrastructure)
7. [Destroying the Infrastructure](#destroying-the-infrastructure)
8. [Contributing](#contributing)
9. [License](#license)

---

## Prerequisites

Before you begin, make sure you have the following prerequisites installed and configured:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
- [AWS CLI](https://aws.amazon.com/cli/) configured with valid credentials and a default region
- Git (optional for cloning this repository)
- AWS IAM User or Role with permissions to create EC2 instances, S3 buckets, and appropriate permissions for Terraform

## Getting Started

1. Clone this Git repository (if you haven't already):

   ```shell
   git clone https://github.com/your-username/terraform-environment-infrastructure.git
   cd terraform-environment-infrastructure
   ```

2. Initialize the Terraform workspace:

   ```shell
   terraform init
   ```

## Project Structure

The project structure is organized as follows:

```plaintext
terraform-environment-infrastructure/
├── dev/
│   ├── my_bucket.tf         # Terraform configuration for the dev environment
│   ├── my_server.tf
│   ├── my_table.tf
│   ├── variables.tf
│   └── ...
├── prod/
│   ├── my_bucket.tf         # Terraform configuration for the prod environment
│   ├── my_server.tf
│   ├── my_table.tf
│   ├── variables.tf
│   └── ...
├── stg/
│   ├── my_bucket.tf         # Terraform configuration for the stg environment
│   ├── my_server.tf
│   ├── my_table.tf
│   ├── variables.tf
│   └── ...
├── .gitignore              # Gitignore file to exclude sensitive information
├── README.md               # This README file
├── backend_infra.tf        # Terraform configuration for backend infrastructure
├── main.tf                 # Main Terraform configuration file (environment-specific modules)
├── providers.tf            # Providers configuration file
├── terraform.tf            # Terraform backend configuration
└── ...
```

## Terraform Configuration

The project includes environment-specific Terraform configuration files (`my_bucket.tf`, `my_server.tf`, `my_table.tf`, etc.) within each environment directory (`dev/`, `prod/`, `stg/`). These files define the infrastructure resources for each environment. You can customize these files as needed for your specific requirements.

The `variables.tf` files in each environment can be used to specify environment-specific variables.

## Deployment

1. Navigate to the specific environment directory (e.g., `dev/`, `prod/`, or `stg/`) where you want to deploy infrastructure.

2. Create a `terraform.tfvars` file in the environment directory to specify any environment-specific variable values.

3. Apply the Terraform configuration to create the infrastructure for the selected environment:

   ```shell
   terraform apply
   ```

4. Confirm the changes and enter `yes` when prompted.

Repeat the deployment process for each environment as needed.

## Managing the Infrastructure

You can manage the infrastructure for each environment independently by navigating to the corresponding environment directory and using Terraform commands such as `terraform plan`, `terraform apply`, and `terraform destroy`.

## Destroying the Infrastructure

To destroy the infrastructure and resources created by Terraform for a specific environment, navigate to the corresponding environment directory and use the following command:

```shell
terraform destroy
```

Confirm the destruction of resources by entering `yes` when prompted.

Thank you for using the Terraform AWS Environment Infrastructure project. If you have any questions or encounter any issues, please don't hesitate to reach out to the project maintainers.
