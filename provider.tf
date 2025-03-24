terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }

  backend "oci" {
    endpoint = "https://orasenatdoracledigital04.compat.objectstorage.us-ashburn-1.oraclecloud.com"
namespace = "orasenatdoracledigital04"
    bucket   = "haribucket"
    region   = "us-ashburn-1"
    key      = "terraform/state/terraform.tfstate"
    
    skip_region_validation     = true
    skip_credentials_validation = true
    skip_metadata_api_check    = true
    force_path_style           = true
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
