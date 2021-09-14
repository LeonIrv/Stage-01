resource "google_service_account" "proxy-sa-acc" {
  account_id   = var.sa_account_id
  display_name = var.sa_display_name
}

resource "google_project_iam_member" "pubsub-role" {
  project = var.project_id
  role    = var.sa_role
  member  = "serviceAccount:${google_service_account.proxy-sa-acc.email}"
}

resource "google_project_iam_member" "storage-role" {
  project = var.project_id
  role    = var.sa_storage_role
  member  = "serviceAccount:${google_service_account.proxy-sa-acc.email}"
}

resource "google_project_iam_member" "SA-User-Role" {
  project = var.project_id
  role    = var.sa_user_role
  member  = "serviceAccount:${google_service_account.proxy-sa-acc.email}"
}

resource "google_service_account_key" "key" {
  service_account_id = google_service_account.proxy-sa-acc.name
}