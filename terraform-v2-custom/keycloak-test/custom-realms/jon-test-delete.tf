module "jon-test-delete" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "jon-test-delete"
  enabled    = false
}
