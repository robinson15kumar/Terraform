variable "stg_list" {}
# variable "stg_list" {
#   type = map(object(
#     {
#       name                     = string
#       resource_group_name      = string
#       location                 = string
#       account_tier             = string            # Standard / Premium
#       account_replication_type = string            # LRS / GRS / RAGRS / ZRS

#       account_kind              = optional(string) # StorageV2 / BlobStorage
#       access_tier               = optional(string) # Hot / Cool
#       enable_https_traffic_only = optional(bool)
#       min_tls_version           = optional(string) # TLS1_2
#       allow_blob_public_access  = optional(bool)
#       shared_access_key_enabled = optional(bool)
#       is_hns_enabled            = optional(bool)   # Data Lake Gen2
#       large_file_share_enabled  = optional(bool)
#       tags                      = optional(map(string))

#       network_rules      = optional(object(
#         {
#           default_action = string
#           bypass         = optional(string)
#           ip_rules       = optional(list(string))
#         }
#       ))
#     }
#   ))
# }