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
