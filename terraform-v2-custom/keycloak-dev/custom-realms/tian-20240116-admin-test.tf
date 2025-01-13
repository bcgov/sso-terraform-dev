module "tian-20240116-admin-test" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "tian-20240116-admin-test"
  enabled    = true
}
