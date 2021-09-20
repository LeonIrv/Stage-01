module "bucket" {
  source                      = "./modules/bucket"
  bucket_name                 = var.bucket_name
  gcp_region                  = var.gcp_region
  project_id                  = var.project_id
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy
}
module "service_account" {
  source          = "./modules/service_account"
  sa_account_id   = var.sa_account_id
  sa_display_name = var.sa_display_name
  project_id      = var.project_id
  sa_role         = var.sa_role
  sa_storage_role = var.sa_storage_role
  sa_user_role    = var.sa_user_role
}
module "vm" {
  source           = "./modules/vm"
  project_id       = var.project_id
  vm_instance_name = var.vm_instance_name
  vm_os_version    = var.vm_os_version
  vm_network_name  = var.vm_network_name
  vm_subnet_name   = var.vm_subnet_name
  vm_machine_type  = var.vm_machine_type
  vm_zone          = var.vm_zone
  sa_account_id    = var.sa_account_id

  depends_on = [
    module.service_account
  ]
}
module "pubsub" {
  source         = "./modules/pubsub"
  project_id     = var.project_id
  topic_name     = var.topic_name
  sub_name       = var.sub_name
  mess_retention = var.mess_retention
}
module "scheduler" {
  source                      = "./modules/scheduler"
  sch_name                    = var.sch_name
  sch_desc                    = var.sch_desc
  schedule                    = var.schedule
  time_zone                   = var.time_zone
  topic_name_sch              = var.topic_name_sch
  
  depends_on = [module.pubsub]
}
