module "service-account-team-1-18" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1-18"
  team_id     = 1
  description = "CSS App Created"
}
