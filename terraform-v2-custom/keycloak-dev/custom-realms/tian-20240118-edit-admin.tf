module "tian-20240118-edit-admin" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "tian-20240118-edit-admin"
  enabled    = true
}
