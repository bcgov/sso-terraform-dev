module "service-account-team-1885-7964" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1885-7964"
  team_id     = 1885
  description = "CSS App Created"
}
