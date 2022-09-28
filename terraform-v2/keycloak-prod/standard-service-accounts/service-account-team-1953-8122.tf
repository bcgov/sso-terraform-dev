module "service-account-team-1953-8122" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1953-8122"
  team_id     = 1953
  description = "CSS App Created"
}
