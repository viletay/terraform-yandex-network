output "network" {
  value       = yandex_vpc_network.network
  description = "The VPC resource being created"
}

output "network_name" {
  value       = yandex_vpc_network.network.name
  description = "The name of the VPC being created"
}

output "network_id" {
  value       = yandex_vpc_network.network.id
  description = "The ID of the VPC being created"
}
