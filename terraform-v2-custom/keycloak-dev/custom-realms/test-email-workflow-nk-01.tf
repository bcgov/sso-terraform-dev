module "test-email-workflow-nk-01" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "test-email-workflow-nk-01"
  enabled    = false
}
