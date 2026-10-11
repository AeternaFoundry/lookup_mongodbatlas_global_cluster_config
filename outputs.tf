output "global_cluster_config_lookup_id" {
  description = "Map of id values across all global_cluster_config_lookup, keyed the same as var.global_cluster_config_lookup except keys with no id are omitted"
  value       = { for k, v in data.mongodbatlas_global_cluster_config.global_cluster_config_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "global_cluster_config_lookup_cluster_name" {
  description = "Map of cluster_name values across all global_cluster_config_lookup, keyed the same as var.global_cluster_config_lookup except keys with no cluster_name are omitted"
  value       = { for k, v in data.mongodbatlas_global_cluster_config.global_cluster_config_lookup : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "global_cluster_config_lookup_custom_zone_mapping_zone_id" {
  description = "Map of custom_zone_mapping_zone_id values across all global_cluster_config_lookup, keyed the same as var.global_cluster_config_lookup except keys with no custom_zone_mapping_zone_id are omitted"
  value       = { for k, v in data.mongodbatlas_global_cluster_config.global_cluster_config_lookup : k => v.custom_zone_mapping_zone_id if v.custom_zone_mapping_zone_id != null && length(v.custom_zone_mapping_zone_id) > 0 }
}
output "global_cluster_config_lookup_managed_namespaces" {
  description = "Map of managed_namespaces values across all global_cluster_config_lookup, keyed the same as var.global_cluster_config_lookup except keys with no managed_namespaces are omitted"
  value       = { for k, v in data.mongodbatlas_global_cluster_config.global_cluster_config_lookup : k => v.managed_namespaces if v.managed_namespaces != null && length(v.managed_namespaces) > 0 }
}
output "global_cluster_config_lookup_project_id" {
  description = "Map of project_id values across all global_cluster_config_lookup, keyed the same as var.global_cluster_config_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_global_cluster_config.global_cluster_config_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

