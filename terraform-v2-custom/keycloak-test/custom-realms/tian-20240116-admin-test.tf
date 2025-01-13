module "tian-20240116-admin-test" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "tian-20240116-admin-test"
  enabled    = true
}
