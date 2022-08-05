resource "yandex_vpc_network" "network" {
  name                            = var.network_name
  folder_id                       = var.folder_id
  description                     = var.description
  labels                          = var.labels
}