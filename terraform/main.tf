# Orchestrate all domain deployments
# Each domain has its own module in domains/ folder

# Deploy pudim.dev domain
module "pudim_dev" {
  source = "./domains/pudim-dev"
  
  enable_nfs_storage       = var.enable_nfs_storage
  storage_class            = var.storage_class
  cloudflare_tunnel_token  = var.cloudflare_tunnel_token
}

# Deploy luismachadoreis.dev domain
module "luismachadoreis_dev" {
  source = "./domains/luismachadoreis-dev"
  
  enable_nfs_storage = var.enable_nfs_storage
  storage_class      = var.storage_class
}

# Deploy carimbo.vip domain
module "carimbo_vip" {
  source = "./domains/carimbo-vip"
  
  enable_nfs_storage = var.enable_nfs_storage
  storage_class      = var.storage_class
}
