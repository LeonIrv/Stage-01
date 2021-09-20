variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "gcp_region" {
  type        = string
  description = "GCP Region"
}
variable "bucket_name" {
  type        = string
  description = "SQL Backup bucket name"
}
variable "uniform_bucket_level_access" {
  type        = bool
  description = "Bucket Level Access"
}
variable "force_destroy" {
  type        = bool
  description = "Bucket Force Destroy"
}
variable "sa_account_id" {
  type        = string
  description = "Service Account accountID"
}
variable "sa_display_name" {
  type        = string
  description = "Service Account Display Name"
}
variable "sa_role" {
  type        = string
  description = "Service Account Pubsub Edit role"
}
variable "sa_storage_role" {
  type        = string
  description = "Service Account Storage Admin role"
}
variable "sa_user_role" {
  type        = string
  description = "Service Account User IAM role"
}
variable "vm_instance_name" {
  type        = string
  description = "VM Instance Name"
}
variable "vm_os_version" {
  type        = string
  description = "VM OS Type and Version"
}
variable "vm_zone" {
  type        = string
  description = "VM Location"
}
variable "vm_machine_type" {
  type        = string
  description = "VM Machine Type"
}
variable "vm_network_name" {
  type        = string
  description = "VM Network Name"
}
variable "vm_subnet_name" {
  type        = string
  description = "VM Subnet Name"
}
variable "topic_name" {
  type        = string
  description = "Pub/Sub Topic Name"
}
variable "sub_name" {
  type        = string
  description = "Pub/Sub Subscription Name"
}
variable "mess_retention" {
  type        = string
  description = "Value for the message retention"
}
variable "sch_name" {
  type        = string
  description = "Name for the Cloud Scheduler"
}
variable "sch_desc" {
  type        = string
  description = "Description for the Cloud Scheduler"
}
variable "schedule" {
  type        = string
  description = "Schedule when to run the Cloud Scheduler"
}
variable "time_zone" {
  type        = string
  description = "Time Zone for the Cloud Scheduler"
}
variable "topic_name_sch" {
  type        = string
  description = "Topic name in Cloud Scheduler build format"
}
