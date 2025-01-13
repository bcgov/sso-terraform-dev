module "tian-test-realm-prod-1121" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "tian-test-realm-prod-1121"
  enabled    = true
}
