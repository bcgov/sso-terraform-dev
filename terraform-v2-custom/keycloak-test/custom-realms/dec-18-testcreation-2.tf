module "dec-18-testcreation-2" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "dec-18-testcreation-2"
  enabled    = false
}
