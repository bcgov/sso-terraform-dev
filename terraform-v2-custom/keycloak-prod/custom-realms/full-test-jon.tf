module "full-test-jon" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "full-test-jon"
  enabled    = false
}
