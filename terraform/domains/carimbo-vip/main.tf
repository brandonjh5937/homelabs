# Create namespace for carimbo.vip domain
resource "kubernetes_namespace" "carimbo_vip" {
  metadata {
    name = "carimbo-vip"
    labels = {
      name        = "carimbo-vip"
      domain      = "carimbo.vip"
      environment = "production"
      managed-by  = "terraform"
    }
  }
}

# Deploy carimbo.vip static site
module "carimbo_vip_site" {
  source = "../../modules/nginx-static-site"
  
  site_name         = "carimbo-vip"
  domain            = "carimbo.vip"
  namespace         = kubernetes_namespace.carimbo_vip.metadata[0].name
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
  
  depends_on = [kubernetes_namespace.carimbo_vip]
}

