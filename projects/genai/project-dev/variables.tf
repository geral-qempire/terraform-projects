########################################
# Core context
########################################

variable "subscription_id" {
  description = "Azure subscription ID for the deployment."
  type        = string
}

variable "project_name" {
  description = "Short project identifier used in resource names."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
}

########################################
# Hub reference
########################################

variable "hub_workspace_id" {
  description = "Resource ID of the parent AI Hub workspace (from hub deployment output)."
  type        = string
}

########################################
# Tier
########################################

variable "tier" {
  description = "Infrastructure tier (poc_dev, prod, prod_critical)."
  type        = string
}

########################################
# Network security
########################################

variable "network_security" {
  description = "Network security posture (must match hub setting)."
  type        = string
  default     = "public"
}

########################################
# Optional resource toggles
########################################

variable "enable_storage" {
  description = "Deploy a storage account for this project."
  type        = bool
  default     = false
}

variable "enable_storage_datalake" {
  description = "Deploy an HNS-enabled (Data Lake Gen2) storage account."
  type        = bool
  default     = false
}

variable "enable_keyvault" {
  description = "Deploy a key vault for this project."
  type        = bool
  default     = false
}

variable "enable_ai_search" {
  description = "Deploy an AI Search service for this project."
  type        = bool
  default     = false
}

variable "enable_sql_database" {
  description = "Deploy a SQL database for this project."
  type        = bool
  default     = false
}

########################################
# SQL configuration
########################################

variable "sql_azuread_administrator" {
  description = "Azure AD administrator for the SQL server."
  type = object({
    login_username              = string
    object_id                   = string
    azuread_authentication_only = optional(bool, true)
  })
  default = null
}

########################################
# RBAC profiles
########################################

variable "reader_group_ids" {
  description = "Azure AD group object IDs to grant Reader access across all project resources."
  type        = list(string)
  default     = []
}

variable "contributor_group_ids" {
  description = "Azure AD group object IDs to grant Contributor access across all project resources."
  type        = list(string)
  default     = []
}

########################################
# Private endpoint networking
########################################

variable "vnet_id" {
  description = "Existing VNet ID. If null, a new VNet is created when network_security != public."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Existing subnet ID for private endpoints. If null, a new subnet is created."
  type        = string
  default     = null
}

variable "vnet_address_space" {
  description = "Address space for auto-created VNet."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for auto-created PE subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "private_dns_zone_ids" {
  description = "Map of subresource type to existing Private DNS Zone ID."
  type        = map(string)
  default     = {}
}

variable "storage_pe_subresources" {
  description = "PE sub-resources for the storage account."
  type        = list(string)
  default     = ["blob"]
}

variable "storage_datalake_pe_subresources" {
  description = "PE sub-resources for the Data Lake storage account."
  type        = list(string)
  default     = ["blob", "dfs"]
}

########################################
# Tagging
########################################

variable "tags" {
  description = "Additional tags to apply to all resources."
  type        = map(string)
  default     = {}
}
