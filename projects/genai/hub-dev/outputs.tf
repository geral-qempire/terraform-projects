output "resource_group_name" {
  description = "Name of the hub resource group."
  value       = module.genai_hub.resource_group_name
}

output "hub_id" {
  description = "Resource ID of the AI Hub workspace."
  value       = module.genai_hub.hub_id
}

output "hub_workspace_id" {
  description = "Immutable workspace ID (GUID) of the AI Hub. Used by project deployments."
  value       = module.genai_hub.hub_workspace_id
}

output "hub_principal_id" {
  description = "Principal ID of the AI Hub managed identity."
  value       = module.genai_hub.hub_principal_id
}

output "ai_services_endpoint" {
  description = "Endpoint URL of the AI Services account."
  value       = module.genai_hub.ai_services_endpoint
}
