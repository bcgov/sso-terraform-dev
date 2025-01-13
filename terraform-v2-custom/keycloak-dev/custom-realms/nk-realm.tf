module "nk-realm" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "nk-realm"
  enabled    = true
}
