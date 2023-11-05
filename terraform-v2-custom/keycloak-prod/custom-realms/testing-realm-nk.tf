module "testing-realm-nk" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "testing-realm-nk"
  enabled    = true
}