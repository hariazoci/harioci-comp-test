terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }
}

terraform {
  backend "s3" {
endpoint = "https://orasenatdoracledigital04.compat.objectstorage.region.oraclecloud.com"
    bucket          = "haribucket"
    region          = "us-ashburn-1"
    key             = "terraform/state/terraform.tfstate" # Path to the state file
 skip_region_validation     = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check    = true
    use_path_style             = true
  }
}
provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
