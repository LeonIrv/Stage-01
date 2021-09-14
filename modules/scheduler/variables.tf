variable "sch_name" {
  type        = string
  description = "Name for this scheduler"
}
variable "sch_desc" {
  type        = string
  description = "Description for the job action taken"
}
variable "schedule" {
  type        = string
  description = "How often the job will run"
}
variable "time_zone" {
  type        = string
  description = "Time Zone to be used in interpreting schedule"
}
variable "base_value" {
  type        = string
  description = "Base 64 encoded-non-empty string, per requirements"
}
variable "topic_name" {
  type        = string
  description = "Pub/Sub Topic Name"
}