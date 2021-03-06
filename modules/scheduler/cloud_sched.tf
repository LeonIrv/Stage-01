resource "google_cloud_scheduler_job" "scheduler" {
  name        = var.sch_name
  description = var.sch_desc
  schedule    = var.schedule
  time_zone   = var.time_zone

  pubsub_target {
    topic_name = var.topic_name_sch
    data       = base64encode("test")
  }
}
