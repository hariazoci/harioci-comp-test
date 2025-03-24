
resource "oci_identity_compartment" "example_compartment" {
  compartment_id = var.tenancy_ocid # Replace with your parent compartment OCID (typically your tenancy OCID)
  description    = "action-comp"
  name           = "action-cmp"
  enable_delete  = true
}
