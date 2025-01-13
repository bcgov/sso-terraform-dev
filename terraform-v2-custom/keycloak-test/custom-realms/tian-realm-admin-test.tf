module "tian-realm-admin-test" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "tian-realm-admin-test"
  enabled    = true
}
