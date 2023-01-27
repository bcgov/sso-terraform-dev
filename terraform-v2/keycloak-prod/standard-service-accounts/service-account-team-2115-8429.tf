module "service-account-team-2115-8429" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2115-8429"
  team_id     = 2115
  description = "CSS App Created"
}
