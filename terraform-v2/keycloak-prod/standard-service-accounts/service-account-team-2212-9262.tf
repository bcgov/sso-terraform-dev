module "service-account-team-2212-9262" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2212-9262"
  team_id     = 2212
  description = "CSS App Created"
}
