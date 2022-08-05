variable "folder_id" {
  description = "The ID of the folder where subnets will be created"
}

variable "network_id" {
  description = "The ID of the network where subnets will be created"
}

variable "subnets" {
  type = list(object({
    name           = string
    zone           = string
    description    = string
    v4_cidr_blocks = list(string)
    route_table_id = string
    labels         = map(string)
  }))
}
