module "jonl-restore-test" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=ssoteam-2160/modules/custom-realm"
  realm_name = "jonl-restore-test"
  enabled    = true
}
