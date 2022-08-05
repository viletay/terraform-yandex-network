variable "folder_id" {
  description = "The ID of the folder where this VPC Network will be created"
}

variable "network_name" {
  description = "The name of the network being created"
}

variable "description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = ""
}

variable "labels" {
  type        = map
  description = "An optional labels of this resource."
  default     = {}
}

variable "subnets" {
  description = "The list of subnets being created"
  type = list(object({
    name           = string
    zone           = string
    description    = string
    v4_cidr_blocks = list(string)
    route_table_id = string
    labels         = map(string)
  }))
}