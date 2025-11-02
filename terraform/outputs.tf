output "static_sites_namespace" {
  description = "Namespace where static sites are deployed"
  value       = kubernetes_namespace.static_sites.metadata[0].name
}

output "pudim_dev_service" {
  description = "Service name for pudim.dev"
  value       = module.pudim_dev.service_name
}

output "luismachadoreis_dev_service" {
  description = "Service name for luismachadoreis.dev"
  value       = module.luismachadoreis_dev.service_name
}

output "carimbo_vip_service" {
  description = "Service name for carimbo.vip"
  value       = module.carimbo_vip.service_name
}

output "cloudflare_tunnel_info" {
  description = "Cloudflare Tunnel deployment information"
  value = length(module.cloudflare_tunnel) > 0 ? {
    namespace = module.cloudflare_tunnel[0].namespace
    service   = module.cloudflare_tunnel[0].service_name
  } : null
}

output "sites_urls" {
  description = "URLs for all deployed sites"
  value = {
    pudim_dev           = "https://pudim.dev"
    luismachadoreis_dev = "https://luismachadoreis.dev"
    carimbo_vip         = "https://carimbo.vip"
  }
}

