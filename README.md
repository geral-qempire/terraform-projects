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
│           ├── main.tf
│           ├── variables.tf
│           ├── outputs.tf
│           ├── backend.tf
│           ├── versions.tf
│           └── terraform.tfvars
├── .gitignore
├── LICENSE
└── README.md
```

Each project should be organized by:
- **Project name** - The application or service name (e.g., `mambo`, `zango`)
- **Environment** - The deployment environment (e.g., `dev`, `qa`, `prod`)

Each environment directory should contain:
- `main.tf` - Stack module references and configuration
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `backend.tf` - Backend configuration for state storage
- `versions.tf` - Provider and Terraform version constraints
- `terraform.tfvars` - Environment-specific variable values

## Tagged Versions

When a project is tagged (e.g., `projects/mambo/dev/v1.0.0`), the `techpivot/terraform-module-releaser@v1` action places the project's files in the root of the tag.

**All files are included in tagged releases**, including `terraform.tfvars` files.

**Example tag structure:**
```
projects/mambo/dev/v1.0.0/
├── main.tf
├── variables.tf
├── outputs.tf
├── backend.tf
├── versions.tf
└── terraform.tfvars
```
