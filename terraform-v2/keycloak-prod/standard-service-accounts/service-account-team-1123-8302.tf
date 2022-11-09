module "service-account-team-1123-8302" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1123-8302"
  team_id     = 1123
  description = "CSS App Created"
}
