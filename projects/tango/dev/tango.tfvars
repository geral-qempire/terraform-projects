# projects/tango/dev/resource_group.tfvars

project_name = "tango"
environment  = "dev"
location     = "North Europe"  # or your preferred region

infra_subscription_id = "2a4f4e29-3789-4e47-867d-62a6eb17950b"

cost_center      = "CC-1234"
business_unit    = "Data"
application_name = "tango-api"
application_code = "TANGO"

additional_tags = {
}

write_access_principals = [

]

read_access_principals = [

]

alert_access_principals = [

]
