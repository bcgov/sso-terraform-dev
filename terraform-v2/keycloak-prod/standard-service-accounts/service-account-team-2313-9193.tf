module "service-account-team-2313-9193" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2313-9193"
  team_id     = 2313
  description = "CSS App Created"
}
