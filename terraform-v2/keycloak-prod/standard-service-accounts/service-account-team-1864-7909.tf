module "service-account-team-1864-7909" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1864-7909"
  team_id     = 1864
  description = "CSS App Created"
}
