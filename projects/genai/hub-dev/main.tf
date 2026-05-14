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

  ai_services_name          = var.ai_services_name
  outbound_fqdn_rules       = var.outbound_fqdn_rules
  sql_azuread_administrator = var.sql_azuread_administrator

  reader_group_ids      = var.reader_group_ids
  contributor_group_ids = var.contributor_group_ids

  vnet_id                         = var.vnet_id
  subnet_id                       = var.subnet_id
  vnet_address_space              = var.vnet_address_space
  subnet_address_prefixes         = var.subnet_address_prefixes
  private_dns_zone_ids            = var.private_dns_zone_ids
  storage_pe_subresources         = var.storage_pe_subresources
  storage_datalake_pe_subresources = var.storage_datalake_pe_subresources

  tags = var.tags
}
