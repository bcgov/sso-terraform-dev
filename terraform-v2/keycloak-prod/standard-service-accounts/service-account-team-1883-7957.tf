module "service-account-team-1883-7957" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1883-7957"
  team_id     = 1883
  description = "CSS App Created"
}
