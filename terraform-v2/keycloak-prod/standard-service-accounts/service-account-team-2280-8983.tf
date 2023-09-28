module "service-account-team-2280-8983" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2280-8983"
  team_id     = 2280
  description = "CSS App Created"
}
