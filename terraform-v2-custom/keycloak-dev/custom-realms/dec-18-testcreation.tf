module "dec-18-testcreation" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "dec-18-testcreation"
  enabled    = true
}
