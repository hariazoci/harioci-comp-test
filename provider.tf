terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }

  backend "http" {
    address       = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/VxuyuhQ_sZd7mItyOJ5RfdPDhzBRonnoG-oVa1dFJTx9TdJ__gFDBtNIoiXULLL8/n/orasenatdoracledigital04/b/haribucket/o/terraform.tfstate"
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
