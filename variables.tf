variable "global_cluster_config_lookup" {
  description = <<EOT
Map of global_cluster_config_lookup, attributes below
Required:
    - cluster_name
    - project_id
Optional:
    - managed_namespaces (block):
        - collection (required)
        - custom_shard_key (required)
        - db (required)
        - is_custom_shard_key_hashed (optional)
        - is_shard_key_unique (optional)
EOT

  type = map(object({
    cluster_name = string
    project_id   = string
    managed_namespaces = optional(list(object({
      collection                 = string
      custom_shard_key           = string
      db                         = string
      is_custom_shard_key_hashed = optional(bool)
      is_shard_key_unique        = optional(bool)
    })))
  }))
}

