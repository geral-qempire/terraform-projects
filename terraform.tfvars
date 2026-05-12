########################################
# Core context
########################################

subscription_id = "" # TODO: set your Azure subscription ID
project_name    = "genai"
environment     = "dev"
location        = "swedencentral"

########################################
# Hub reference
########################################

hub_workspace_id = "" # TODO: set from hub deployment output (module.genai_hub.hub_id)

########################################
# Tier
########################################

tier = "poc_dev"

########################################
# Optional resources
########################################

enable_storage          = false
enable_storage_datalake = false
enable_keyvault         = false
enable_ai_search        = false
enable_sql_database     = false

########################################
# Tags
########################################

tags = {}
