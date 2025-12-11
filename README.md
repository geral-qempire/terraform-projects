# terraform-projects

This repository contains Terraform project configurations that deploy stacks to specific environments.

## File Structure

```
terraform-projects/
├── .github/
│   └── workflows/
│       └── terraform-module-releaser.yml
├── projects/
│   └── <project_name>/
│       └── <environment>/
│           ├── backend.tf             # Backend configuration for real environment
│           ├── backend-stage.hcl       # Backend override for staging environment deployments
│           ├── main.tf                # Main Terraform configuration
│           ├── outputs.tf              # Output definitions
│           ├── providers.tf          # Provider configurations
│           ├── terraform.tfvars       # Variable values
│           ├── variables.tf           # Variable definitions
│           └── versions.tf            # Terraform and provider versions
├── .gitignore
├── LICENSE
└── README.md
```

Each project should be organized by:
- **Project name** - The application or service name (e.g., `mambo`, `zango`)
- **Environment** - The deployment environment (e.g., `dev`, `qa`, `prd`)

Each environment directory should contain:
- `backend.tf` - Backend configuration for state storage in the real environment
- `backend-stage.hcl` - Backend override for staging environment deployments (allows staging to use a separate state backend)
- `main.tf` - Stack module references and configuration
- `outputs.tf` - Output values
- `providers.tf` - Provider configurations (e.g., Azure provider settings)
- `terraform.tfvars` - Environment-specific variable values
- `variables.tf` - Input variable definitions
- `versions.tf` - Provider and Terraform version constraints

## Tagged Versions

When a project is tagged (e.g., `projects/mambo/dev/v1.0.0`), the `techpivot/terraform-module-releaser@v1` action places the project's files in the root of the tag.

**All files are included in tagged releases**, including `terraform.tfvars` files.

**Example tag structure:**
```
projects/mambo/dev/v1.0.0/
├── backend.tf
├── backend-stage.hcl
├── main.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars
├── variables.tf
└── versions.tf
```
