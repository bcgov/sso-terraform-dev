module "service-account-team-134-7875" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-134-7875"
  team_id     = 134
  description = "CSS App Created"
}
