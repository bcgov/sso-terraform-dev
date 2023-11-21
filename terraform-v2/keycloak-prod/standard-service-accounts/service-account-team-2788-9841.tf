module "service-account-team-2788-9841" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2788-9841"
  team_id     = 2788
  description = "CSS App Created"
}
