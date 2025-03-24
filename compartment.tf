
resource "oci_identity_compartment" "example_compartment" {
  compartment_id = var.tenancy_ocid # Replace with your parent compartment OCID (typically your tenancy OCID)
  description    = "jnks compartment"
  name           = "jkns-comp"
  enable_delete  = true
}

resource "oci_identity_compartment" "demo-compartment" {
  compartment_id = var.tenancy_ocid # Replace with your parent compartment OCID (typically your tenancy OCID)
  description    = "hello compartment"
  name           = "hellojkns-comp"
  enable_delete  = true
}
