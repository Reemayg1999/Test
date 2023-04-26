variable "compartment_ocid" {

}

variable "region" {

}

variable "availability_domain" {

}


variable "environment" {
  type = string
}

variable "is_private" {
  type    = bool
  default = false
}

variable "public_subnet_id" {
  type = string
}


variable "default_fault_domain" {
  default = "FAULT-DOMAIN-1"
}

variable "os_image_id" {
  default = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaabtgxztmbpukh7cqx4eskqnrvcsntkmfylo7jzvpykalofw367aqq" # Canonical-Ubuntu-20.04-aarch64-2022.01.18-0
}