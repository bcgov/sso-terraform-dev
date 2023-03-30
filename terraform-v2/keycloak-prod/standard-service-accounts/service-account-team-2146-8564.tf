module "service-account-team-2146-8564" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2146-8564"
  team_id     = 2146
  description = "CSS App Created"
}
