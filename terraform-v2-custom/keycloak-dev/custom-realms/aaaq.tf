module "aaaq" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "aaaq"
  enabled    = false
}
