module "service-account-team-1685-8009" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1685-8009"
  team_id     = 1685
  description = "CSS App Created"
}
