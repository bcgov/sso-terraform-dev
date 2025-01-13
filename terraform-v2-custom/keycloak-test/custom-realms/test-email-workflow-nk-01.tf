module "test-email-workflow-nk-01" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "test-email-workflow-nk-01"
  enabled    = false
}
