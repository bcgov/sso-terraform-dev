module "aaadsds" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "aaadsds"
  enabled    = false
}
