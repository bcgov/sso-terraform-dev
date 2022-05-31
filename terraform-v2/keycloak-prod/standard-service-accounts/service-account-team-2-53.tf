module "service-account-team-2-53" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2-53"
  team_id     = 2
  description = "CSS App Created"
}
