module "tian-test-realm-new" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "tian-test-realm-new"
  enabled    = true
}
