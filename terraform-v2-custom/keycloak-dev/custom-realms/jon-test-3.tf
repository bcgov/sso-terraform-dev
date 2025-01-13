module "jon-test-3" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "jon-test-3"
  enabled    = true
}
