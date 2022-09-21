module "service-account-team-1957-8089" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1957-8089"
  team_id     = 1957
  description = "CSS App Created"
}
