module "sandbox-test-dec-27" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "sandbox-test-dec-27"
  enabled    = true
}
