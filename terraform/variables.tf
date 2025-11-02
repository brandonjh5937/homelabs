variable "cloudflare_tunnel_token" {
  description = "Cloudflare Tunnel token for exposing services"
  type        = string
  sensitive   = true
  default     = ""
}

variable "enable_nfs_storage" {
  description = "Enable NFS persistent storage for sites"
  type        = bool
  default     = true
}

variable "storage_class" {
  description = "Kubernetes StorageClass to use for persistent volumes"
  type        = string
  default     = "nfs-client"
}

