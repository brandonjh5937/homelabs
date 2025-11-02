# Create namespace for static sites
resource "kubernetes_namespace" "static_sites" {
  metadata {
    name = "static-sites"
    labels = {
      name        = "static-sites"
      managed-by  = "terraform"
    }
  }
}

# Deploy Cloudflare Tunnel (optional - requires token)
module "cloudflare_tunnel" {
  count = var.cloudflare_tunnel_token != "" ? 1 : 0
  
  source = "./modules/cloudflare-tunnel"
  
  tunnel_token = var.cloudflare_tunnel_token
  namespace    = kubernetes_namespace.static_sites.metadata[0].name
}

# Deploy static sites
module "pudim_dev" {
  source = "./modules/nginx-static-site"
  
  site_name         = "pudim-dev"
  domain            = "pudim.dev"
  namespace         = kubernetes_namespace.static_sites.metadata[0].name
  replicas          = 2
  enable_nfs        = var.enable_nfs_storage
  storage_class     = var.storage_class
  storage_size      = "1Gi"
  
  depends_on = [kubernetes_namespace.static_sites]
}

module "luismachadoreis_dev" {
  source = "./modules/nginx-static-site"
  
  site_name         = "luismachadoreis-dev"
  domain            = "luismachadoreis.dev"
  namespace         = kubernetes_namespace.static_sites.metadata[0].name
  replicas          = 2
  enable_nfs        = var.enable_nfs_storage
  storage_class     = var.storage_class
  storage_size      = "1Gi"
  
  depends_on = [kubernetes_namespace.static_sites]
}

module "carimbo_vip" {
  source = "./modules/nginx-static-site"
  
  site_name         = "carimbo-vip"
  domain            = "carimbo.vip"
  namespace         = kubernetes_namespace.static_sites.metadata[0].name
  replicas          = 2
  enable_nfs        = var.enable_nfs_storage
  storage_class     = var.storage_class
  storage_size      = "1Gi"
  
  depends_on = [kubernetes_namespace.static_sites]
}

