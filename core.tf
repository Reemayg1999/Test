resource oci_core_instance test_instance {
 
  agent_config {
    is_management_disabled = "false"
    is_monitoring_disabled = "false"

    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }

    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }

    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }

  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  fault_domain        = var.default_fault_domain

  create_vnic_details {
    assign_private_dns_record = true
    assign_public_ip          = var.is_private == true ? false : true
    subnet_id                 = var.is_private == true ? false : true
  }

  display_name = "Instance"

  instance_options {
    are_legacy_imds_endpoints_disabled = false
  }

  is_pv_encryption_in_transit_enabled = true

 

  shape = "VM.Standard.A1.Flex"
  shape_config {
    memory_in_gbs = "6"
    ocpus         = "1"
  }

  source_details {
    source_id   = var.os_image_id
    source_type = "image"
  }

  preserve_boot_volume = false
}