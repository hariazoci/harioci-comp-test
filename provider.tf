terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }

  backend "http" {
    address       = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/5kPpW9BAC3zVBqrIN30RIZRT5w7au11vrpklORkbJ6rsqJxmGvBDrfcKEz0DV6NM/n/orasenatdoracledigital04/b/haribucket/o/"
    update_method = "PUT"

  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
