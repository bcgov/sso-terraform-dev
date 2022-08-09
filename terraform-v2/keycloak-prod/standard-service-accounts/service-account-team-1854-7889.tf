module "service-account-team-1854-7889" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1854-7889"
  team_id     = 1854
  description = "CSS App Created"
}
