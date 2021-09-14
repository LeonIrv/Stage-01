variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "vm_network_name" {
  type        = string
  description = "VM VPC Name"
}
variable "vm_subnet_name" {
  type        = string
  description = "VM Subnetwork Name"
}
variable "vm_zone" {
  type        = string
  description = "VM Location"
}
variable "vm_machine_type" {
  type        = string
  description = "GKE Machine Type"
}
variable "vm_instance_name" {
  type        = string
  description = "VM Instance Name"
}
variable "vm_os_version" {
  type        = string
  description = "VM OS Type and Version"
}
variable "sa_account_id" {
  type        = string
  description = "Service Account for creating the compute instance"
}