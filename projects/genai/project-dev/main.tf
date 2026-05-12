module "genai_project" {
  source = "git::https://github.com/geral-qempire/terraform-stacks.git//stacks/genai_project"

  project_name     = var.project_name
  environment      = var.environment
  location         = var.location
  hub_workspace_id = var.hub_workspace_id
  tier             = var.tier

  enable_storage          = var.enable_storage
  enable_storage_datalake = var.enable_storage_datalake
  enable_keyvault         = var.enable_keyvault
  enable_ai_search        = var.enable_ai_search
  enable_sql_database     = var.enable_sql_database

  sql_azuread_administrator = var.sql_azuread_administrator

  reader_group_ids      = var.reader_group_ids
  contributor_group_ids = var.contributor_group_ids

  tags = var.tags
}
