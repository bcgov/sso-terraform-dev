module "jon-test-7" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "jon-test-7"
  enabled    = true
}
