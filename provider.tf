terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }
}

terraform {
  backend "oci" {
    bucket          = "haribucket"
    namespace       = "orasenatdoracledigital04"
    region          = "var.region"
    key             = "terraform/state/terraform.tfstate" # Path to the state file
  }
}
provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
