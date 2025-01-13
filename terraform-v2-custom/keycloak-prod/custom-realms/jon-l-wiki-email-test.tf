module "jon-l-wiki-email-test" {
  source     = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/custom-realm"
  realm_name = "jon-l-wiki-email-test"
  enabled    = true
}
