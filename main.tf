module "genai_hub" {
  source = "git::https://github.com/geral-qempire/terraform-stacks.git//stacks/genai_hub"

  project_name     = var.project_name
  environment      = var.environment
  location         = var.location
  tier             = var.tier
  network_security = var.network_security

  enable_storage_datalake = var.enable_storage_datalake
  enable_ai_search        = var.enable_ai_search
  enable_sql_database     = var.enable_sql_database

  outbound_fqdn_rules   = var.outbound_fqdn_rules
  sql_azuread_administrator = var.sql_azuread_administrator

  tags = var.tags
}
