module "service-account-team-1553-7559" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1553-7559"
  team_id     = 1553
  description = "CSS App Created"
}
