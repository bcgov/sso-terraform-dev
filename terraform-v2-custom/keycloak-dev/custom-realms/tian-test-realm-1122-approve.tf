module "tian-test-realm-1122-approve" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "tian-test-realm-1122-approve"
  enabled    = true
}
