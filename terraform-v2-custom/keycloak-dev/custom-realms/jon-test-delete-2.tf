module "jon-test-delete-2" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "jon-test-delete-2"
  enabled    = false
}
