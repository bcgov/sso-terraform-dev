module "tian-test-realm-new" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "tian-test-realm"
  enabled    = true
}
