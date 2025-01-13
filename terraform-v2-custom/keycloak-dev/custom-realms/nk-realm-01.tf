module "nk-realm-01" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "nk-realm-01"
  enabled    = true
}
