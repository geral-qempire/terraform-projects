########################################
# Core context
########################################

subscription_id = "cb084404-ffbb-4bca-8a99-272625f6008a"
project_name    = "genai"
environment     = "dev"
location        = "swedencentral"

########################################
# Tier and network security
########################################

tier             = "poc_dev"
network_security = "inbound_outbound_safe"

########################################
# Optional resources
########################################

enable_storage_datalake = true
enable_ai_search        = true
enable_sql_database     = false

########################################
# Private endpoint networking
########################################

vnet_address_space      = ["10.100.0.0/16"]
subnet_address_prefixes = ["10.100.1.0/24"]

storage_pe_subresources         = ["blob", "file"]
storage_datalake_pe_subresources = ["blob", "dfs"]

########################################
# Outbound FQDN rules (inbound_outbound_safe only)
########################################

outbound_fqdn_rules = [
  "fqdn-test-01.example.com",
  "fqdn-test-02.example.com",
  "fqdn-test-03.example.com",
  "fqdn-test-04.example.com",
  "fqdn-test-05.example.com",
  "fqdn-test-06.example.com",
  "fqdn-test-07.example.com",
  "fqdn-test-08.example.com",
  "fqdn-test-09.example.com",
  "fqdn-test-10.example.com",
  "fqdn-test-11.example.com",
  "fqdn-test-12.example.com",
  "fqdn-test-13.example.com",
  "fqdn-test-14.example.com",
  "fqdn-test-15.example.com",
  "fqdn-test-16.example.com",
  "fqdn-test-17.example.com",
  "fqdn-test-18.example.com",
  "fqdn-test-19.example.com",
  "fqdn-test-20.example.com",
]

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
