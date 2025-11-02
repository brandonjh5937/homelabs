# Create namespace for luismachadoreis.dev domain
resource "kubernetes_namespace" "luismachadoreis_dev" {
  metadata {
    name = "luismachadoreis-dev"
    labels = {
      name        = "luismachadoreis-dev"
      domain      = "luismachadoreis.dev"
      environment = "production"
      managed-by  = "terraform"
    }
  }
}

# Deploy luismachadoreis.dev static site
module "luismachadoreis_dev_site" {
  source = "../../modules/nginx-static-site"
  
  site_name         = "luismachadoreis-dev"
  domain            = "luismachadoreis.dev"
  namespace         = kubernetes_namespace.luismachadoreis_dev.metadata[0].name
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
  
  depends_on = [kubernetes_namespace.luismachadoreis_dev]
}

