project_id                  = "epam-demo-325303"
gcp_region                  = "us-central1"
uniform_bucket_level_access = true
force_destroy               = true
bucket_name                 = "epam-demo-bucket-01"
sa_account_id               = "proxy-sa-acc"
sa_display_name             = "proxy-sa-acc"
sa_role                     = "roles/pubsub.editor"
sa_storage_role             = "roles/storage.objectAdmin"
sa_user_role                = "roles/iam.serviceAccountUser"
vm_instance_name            = "pubsub-instance"
vm_os_version               = "ubuntu-os-cloud/ubuntu-1804-lts"
vm_zone                     = "us-central1-b"
vm_network_name             = "jenkinsnetwork"
vm_subnet_name              = "jenkinsnetwork"
vm_machine_type             = "n1-standard-1"
topic_name                  = "demo-topic"
sub_name                    = "demo-subscription"
mess_retention              = "1200s"
sch_name                    = "demo-scheduler"
sch_desc                    = "Cloud scheduler for Stage 1 of the final demo"
schedule                    = "*/5 * * * *"
time_zone                   = "America/Mexico_City"
topic_name_sch              = "projects/epam-demo-325303/topics/demo-topic"
