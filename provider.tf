provider "oci" {
  # Configure your OCI provider settings here
  # Example configuration:
  region         = "us-ashburn-1"
  tenancy_ocid   = "ocid1.tenancy.oc1..aaaaaaaau6tqqxwoo36xtiqtqgdfnaepwwdcgwcldg6stlrbxju4jzs76k2q"
  user_ocid      = "ocid1.user.oc1..aaaaaaaaliqqtocdaz3tafj7to5byxlf6y5qtommgassrxlv4iq3pxvhqtqa"
  fingerprint    = "c6:43:46:10:1b:15:d8:23:2f:9a:75:00:9c:d8:3f:10"
  private_key_path = "~/.oci/oci_api_key.pem"
  
  # Uncomment and update the above lines with your actual OCI credentials
}
