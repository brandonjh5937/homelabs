variable "enable_nfs_storage" {
  description = "Enable NFS persistent storage"
  type        = bool
  default     = true
}

variable "storage_class" {
  description = "Storage class for persistent volumes"
  type        = string
  default     = "nfs-client"
}

variable "cloudflare_tunnel_token" {
  description = "Cloudflare Tunnel token (optional)"
  type        = string
  default     = ""
  sensitive   = true
}

