module "service-account-team-2379-9839" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2379-9839"
  team_id     = 2379
  description = "CSS App Created"
}
