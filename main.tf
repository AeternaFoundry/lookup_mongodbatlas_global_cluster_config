data "mongodbatlas_global_cluster_config" "global_cluster_config_lookup" {
  for_each = var.global_cluster_config_lookup

  cluster_name = each.value.cluster_name
  project_id   = each.value.project_id

  dynamic "managed_namespaces" {
    for_each = each.value.managed_namespaces != null ? each.value.managed_namespaces : []
    content {
      collection                 = managed_namespaces.value.collection
      custom_shard_key           = managed_namespaces.value.custom_shard_key
      db                         = managed_namespaces.value.db
      is_custom_shard_key_hashed = managed_namespaces.value.is_custom_shard_key_hashed
      is_shard_key_unique        = managed_namespaces.value.is_shard_key_unique
    }
  }
}

