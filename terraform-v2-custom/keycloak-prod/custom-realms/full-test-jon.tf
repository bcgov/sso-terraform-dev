module "full-test-jon" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "full-test-jon"
  enabled    = true
}
