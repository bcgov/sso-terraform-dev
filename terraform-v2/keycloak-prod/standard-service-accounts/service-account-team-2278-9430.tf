module "service-account-team-2278-9430" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2278-9430"
  team_id     = 2278
  description = "CSS App Created"
}
