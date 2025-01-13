module "nk-realm" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "nk-realm"
  enabled    = true
}
