resource "oci_identity_compartment" "example_compartment" {
  compartment_id = "<parent_compartment_ocid>" # Replace with your parent compartment OCID (typically your tenancy OCID)
  description    = "jnks compartment"
  name           = "jkns-comp"
}
