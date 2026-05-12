########################################
# Core context
########################################

subscription_id = "cb084404-ffbb-4bca-8a99-272625f6008a" # TODO: set your Azure subscription ID
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

enable_storage_datalake = false
enable_ai_search        = false
enable_sql_database     = false

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
# Tags
########################################

tags = {}
