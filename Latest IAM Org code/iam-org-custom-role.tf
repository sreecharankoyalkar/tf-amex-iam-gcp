# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


/*####################################
  Custom Role Cloud Security Poweruser
*/ ####################################


module "cloud-security-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_security_poweruser"
  title        = "cloud security power user"
  description  = "cloud security power user custom role"
  # base_roles           = ["roles/resourcemanager.organizationViewer", "roles/orgpolicy.policyViewer", "roles/securitycenter.adminViewer", "roles/logging.privateLogViewer", "roles/container.viewer", "roles/compute.viewer", "roles/bigquery.dataViewer", "roles/securitycenter.admin", "roles/iam.securityReviewer"]
  permissions = var.cloud-security-poweruser-permissions
}

/*##################################
  Custom Role Infosec Audit
*/ ##################################


module "infosec-audit" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_infosecaudit_viewer"
  title        = "infosec audit"
  description  = "infosec audit custom role"
  # base_roles           = ["roles/resourcemanager.organizationViewer", "roles/iam.securityReviewer"]
  permissions = var.org_infosecaudit_viewer_permissions
}

/*##################################
  Custom Role IAM Poweruser
*/ ##################################


module "iam-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_iam_poweruser"
  title        = "iam power user"
  description  = "iam power user custom role"
  # base_roles           = ["roles/iam.organizationRoleViewer", "roles/iam.workloadIdentityPoolViewer", "roles/iam.securityReviewer"]
  permissions = var.iam-poweruser-permissions
}

/*##########################################
  Custom Role Network Security Eng poweruser
*/ ##########################################

module "network-security-eng-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_netsec_poweruser"
  title        = "network security eng power user"
  description  = "network security eng power user custom role"
  # base_roles           = ["roles/compute.orgFirewallPolicyAdmin", "roles/accesscontextmanager.policyReader"]
  permissions = var.network-security-eng-poweruser-permissions
}


/*##################################
  Custom Role SIEM Poweruser
*/ ##################################


module "siem-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_siem_poweruser"
  title        = "siem poweruser"
  description  = "siem poweruser custom role"
  # base_roles           = ["roles/logging.viewer", "roles/monitoring.viewer"]
  permissions = var.siem-poweruser-permissions
}

/*##################################
  Custom Role IR Poweruser
*/ ##################################


module "ir-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_ir_poweruser"
  title        = "ir poweruser"
  description  = "ir poweruser custom role"
  # base_roles   = ["roles/resourcemanager.organizationViewer", "roles/securitycenter.adminViewer"]
  permissions = var.ir-poweruser-permissions
}

/*##################################
  Custom Role DDI poweruser
*/ ##################################

module "ddi-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_ddi_poweruser"
  title        = "ddi poweruser"
  description  = "ddi poweruser custom role"
  # base_roles   = ["roles/dns.reader"]
  permissions = var.ddi-poweruser-permissions
}

/*##################################
  Custom Role Billing Poweruser
*/ ##################################


module "billing-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_billing_viewer"
  title        = "billing poweruser"
  description  = "billing poweruser custom role"
  # base_roles           = ["roles/billing.viewer", "roles/resourcemanager.organizationViewer"]
  permissions = var.billing-poweruser-permissions
}

/*##################################
  Custom Role Network Poweruser
*/ ##################################

module "network-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_network_poweruser"
  title        = "network poweruser"
  description  = "network poweruser custom role"
  # base_roles           = ["roles/compute.networkViewer", "roles/resourcemanager.folderViewer", "roles/viewer"]
  permissions = var.network-poweruser-permissions
}

/*##################################
  Custom Role Product Poweruser
*/ ##################################


module "product-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_product_pu"
  title        = "product poweruser"
  description  = "product poweruser custom role"
  # base_roles           = ["roles/cloudasset.viewer"]
  permissions = var.product-poweruser-permissions
}

/*##################################
  Custom Role Crypto Poweruser
*/ ##################################

module "crypto-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_crypto_poweruser"
  title        = "crypto poweruser"
  description  = "crypto poweruser custom role"
  # base_roles           = ["roles/cloudkms.admin"]
  permissions = var.crypto-poweruser-permissions
}

/*##################################
  Custom Role CloudEng Admin
*/ ##################################


module "cloudeng-admin" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_corefoundation_admin"
  title        = "cloudeng admin"
  description  = "cloudeng admin custom role"
  # base_roles           = ["roles/resourcemanager.organizationAdmin", "roles/resourcemanager.folderAdmin", "roles/resourcemanager.projectCreator", "roles/billing.user", "roles/billing.viewer", "roles/iam.organizationRoleViewer", "roles/orgpolicy.policyAdmin", "roles/cloudsupport.admin", "roles/container.admin", "roles/compute.admin", "roles/logging.admin", "roles/monitoring.admin", "roles/iam.serviceAccountUser"]
  permissions = var.cloudeng-admin-permissions
}

/*##################################
  Custom Role CloudEng Poweruser
*/ ##################################

module "cloudeng-powersuer" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_corefoundation_poweruser"
  title        = "cloudeng poweruser"
  description  = "cloudeng poweruser custom role"
  # base_roles           = ["roles/resourcemanager.organizationViewer", "roles/resourcemanager.folderViewer", "roles/billing.viewer", "roles/iam.organizationRoleViewer", "roles/orgpolicy.policyViewer", "roles/cloudsupport.techSupportViewer", "roles/container.viewer", "roles/compute.viewer", "roles/logging.viewer", "roles/monitoring.viewer"]
  permissions = var.cloudeng-powersuer-permissions
}










