module "service-account-team-2279-8966" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2279-8966"
  team_id     = 2279
  description = "CSS App Created"
}
