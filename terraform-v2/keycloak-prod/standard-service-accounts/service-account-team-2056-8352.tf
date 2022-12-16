module "service-account-team-2056-8352" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2056-8352"
  team_id     = 2056
  description = "CSS App Created"
}
