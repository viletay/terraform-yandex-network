locals {
  subnets = {
    for x in var.subnets :
    "${x.name}" => x
  }
}

resource "yandex_vpc_subnet" "subnet" {
  network_id     = var.network_id
  folder_id      = var.folder_id

  for_each       = local.subnets
  name           = each.value.name
  zone           = each.value.zone
  description    = each.value.description
  v4_cidr_blocks = each.value.v4_cidr_blocks
  route_table_id = each.value.route_table_id
  labels         = each.value.labels
}

