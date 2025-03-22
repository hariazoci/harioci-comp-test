resource "oci_identity_compartment" "example_compartment" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaau6tqqxwoo36xtiqtqgdfnaepwwdcgwcldg6stlrbxju4jzs76k2q" # Replace with your parent compartment OCID (typically your tenancy OCID)
  description    = "jnks compartment"
  name           = "jkns-comp"
}
