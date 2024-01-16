module "tian-test-realm-2024-01-15-admin-test" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "tian-test-realm-2024-01-15-admin-test"
  enabled    = true
}
