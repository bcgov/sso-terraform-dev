module "nov-21-test-1" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "nov-21-test-1"
  enabled    = true
}
