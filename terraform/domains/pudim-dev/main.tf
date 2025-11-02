# Create namespace for pudim.dev domain
resource "kubernetes_namespace" "pudim_dev" {
  metadata {
    name = "pudim-dev"
    labels = {
      name        = "pudim-dev"
      domain      = "pudim.dev"
      environment = "production"
      managed-by  = "terraform"
    }
  }
}

# Deploy pudim.dev static site
module "pudim_dev_site" {
  source = "../../modules/nginx-static-site"
  
  site_name         = "pudim-dev"
  domain            = "pudim.dev"
  namespace         = kubernetes_namespace.pudim_dev.metadata[0].name
  environment       = "production"
  replicas          = 3
  enable_nfs        = var.enable_nfs_storage
  storage_class     = var.storage_class
  storage_size      = "1Gi"
  
  # Production resource limits
  resource_limits_cpu      = "200m"
  resource_limits_memory   = "256Mi"
  resource_requests_cpu    = "100m"
  resource_requests_memory = "128Mi"
  
  depends_on = [kubernetes_namespace.pudim_dev]
}

# Deploy Cloudflare Tunnel (optional - only for pudim.dev)
module "cloudflare_tunnel" {
  count = var.cloudflare_tunnel_token != "" ? 1 : 0
  
  source = "../../modules/cloudflare-tunnel"
  
  tunnel_token = var.cloudflare_tunnel_token
  namespace    = kubernetes_namespace.pudim_dev.metadata[0].name
}

