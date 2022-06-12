module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cherabud+sercoent-dev@amazon.com"
    AccountName               = "cherabud+sercoent-dev"
    ManagedOrganizationalUnit = "ent-test"
    SSOUserEmail              = "cherabud+sercoent-dev@amazon.com"
    SSOUserFirstName          = "Sandeep"
    SSOUserLastName           = "Cherabudla"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
