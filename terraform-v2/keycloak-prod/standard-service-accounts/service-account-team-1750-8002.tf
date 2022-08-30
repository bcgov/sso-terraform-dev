module "service-account-team-1750-8002" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1750-8002"
  team_id     = 1750
  description = "CSS App Created"
}
