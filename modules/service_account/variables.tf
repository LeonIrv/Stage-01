variable "sa_account_id" {
  type        = string
  description = "Service Account accountID"
}
variable "sa_display_name" {
  type        = string
  description = "Service Account Display Name"
}
variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "sa_role" {
  type        = string
  description = "Service Account Role (Pubsub Editor)"
}
variable "sa_storage_role" {
  type        = string
  description = "Service Account Role (Storage Object Admin)"
}
variable "sa_user_role" {
  type        = string
  description = "Service Account Role (Service Account User)"
}