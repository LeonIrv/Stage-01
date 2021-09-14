resource "google_pubsub_topic" "demo-topic" {
  name = var.topic_name
  project = var.project_id

  labels = {
    foo = "bar"
  }
}

resource "google_pubsub_subscription" "demo-subscr" {
  name  = var.sub_name
  topic = google_pubsub_topic.demo-topic.name
  project = var.project_id

  labels = {
    foo = "bar"
  }

  # 20 minutes
  message_retention_duration = var.mess_retention
  retain_acked_messages      = true

  ack_deadline_seconds = 20

  expiration_policy {
    ttl = "300000.5s"
  }
  retry_policy {
    minimum_backoff = "10s"
  }

  enable_message_ordering    = false
} 