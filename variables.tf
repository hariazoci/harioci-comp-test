variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "access_key" {
  description = "S3 interoperability access key for OCI Object Storage"
  type        = string
}
