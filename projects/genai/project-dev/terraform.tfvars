########################################
# Core context
########################################

subscription_id = "cb084404-ffbb-4bca-8a99-272625f6008a"
project_name    = "genai"
environment     = "dev"
location        = "swedencentral"

########################################
# Hub reference
########################################

hub_workspace_id = "/subscriptions/cb084404-ffbb-4bca-8a99-272625f6008a/resourceGroups/rg-genai-dev-swc/providers/Microsoft.MachineLearningServices/workspaces/mlw-hub-genai-dev-swc"

########################################
# Tier
########################################

tier             = "poc_dev"
network_security = "inbound_outbound_safe"

########################################
# Optional resources
########################################

enable_storage          = true
enable_storage_datalake = true
enable_keyvault         = true
enable_ai_search        = true
enable_sql_database     = false

########################################
# RBAC profiles
########################################

reader_group_ids = [
  "188bbe45-d58e-4f42-a97c-f46cec30ba6d",
]

contributor_group_ids = [
  "059bb0a1-d2f1-49e9-a5c8-d0cf66ec55ac",
]

########################################
# Tags
########################################

tags = {}
