##########################
## object storage bucket
##########################

module "devcs_binrepo_awcdevops-awciaaspaas_awc-deployments_74812" {
    source                      = "./object_storage_module"
    compartment_ocid            = local.compartment_ocid
    region                      = var.region
    tenancy_ocid                = var.tenancy_ocid
    project_tag                 = var.project_tag
    bucket_name                 = var.bucket_name_1
    bucket_storage_tier         = var.bucket_storage_tier_1
    bucket_access_type          = var.bucket_access_type_1
    bucket_versioning           = var.bucket_versioning_1
    auto_tiering                = var.auto_tiering_1
    object_event_enabled        = var.object_event_enabled_1
   }



