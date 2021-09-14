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
variable "project_id" {
  type        = string
  description = "Project ID"
}