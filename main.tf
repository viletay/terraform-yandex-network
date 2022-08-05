/******************************************
	VPC configuration
 *****************************************/
 module "vpc-network" {
    source       = "./modules/vpc-network"
    folder_id    = var.folder_id
    network_name = var.network_name
    description  = var.description
    labels       = var.labels
}

/******************************************
	Subnet configuration
 *****************************************/
module "vpc-subnet" {
  source           = "./modules/vpc-subnet"
  folder_id        = var.folder_id
  network_id       = module.vpc-network.network_id
  subnets          = var.subnets
}