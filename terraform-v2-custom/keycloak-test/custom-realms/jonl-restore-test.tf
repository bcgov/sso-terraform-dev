module "jonl-restore-test" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "jonl-restore-test"
  enabled    = false
}
