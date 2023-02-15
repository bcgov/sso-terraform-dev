module "service-account-team-2119-8482" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2119-8482"
  team_id     = 2119
  description = "CSS App Created"
}
