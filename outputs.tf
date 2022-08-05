output "network" {
  value       = module.vpc-network.network
  description = "The VPC resource being created"
}

output "network_name" {
  value       = module.vpc-network.network.name
  description = "The name of the VPC being created"
}

output "network_id" {
  value       = module.vpc-network.network.id
  description = "The ID of the VPC being created"
}

output "subnets_ids" {
  value       = [for network in module.vpc-subnet.subnets : network.id]
  description = "The IDs of the subnets being created"
}