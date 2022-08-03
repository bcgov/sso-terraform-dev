module "service-account-team-1857-7869" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1857-7869"
  team_id     = 1857
  description = "CSS App Created"
}
