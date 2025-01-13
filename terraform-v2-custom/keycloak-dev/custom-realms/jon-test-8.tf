module "jon-test-8" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "jon-test-8"
  enabled    = true
}
