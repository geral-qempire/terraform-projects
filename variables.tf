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
# Tier and network security
########################################

variable "tier" {
  description = "Infrastructure tier (poc_dev, prod, prod_critical)."
  type        = string
}

variable "network_security" {
  description = "Network security posture (public, inbound_safe, inbound_outbound_safe)."
  type        = string
}

########################################
# Optional resource toggles
########################################

variable "enable_storage_datalake" {
  description = "Deploy an HNS-enabled (Data Lake Gen2) storage account."
  type        = bool
  default     = false
}

variable "enable_ai_search" {
  description = "Deploy an AI Search service."
  type        = bool
  default     = false
}

variable "enable_sql_database" {
  description = "Deploy a SQL database."
  type        = bool
  default     = false
}

########################################
# Outbound rules
########################################

variable "outbound_fqdn_rules" {
  description = "Custom FQDNs for managed network firewall."
  type        = list(string)
  default     = []
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
# Tagging
########################################

variable "tags" {
  description = "Additional tags to apply to all resources."
  type        = map(string)
  default     = {}
}
