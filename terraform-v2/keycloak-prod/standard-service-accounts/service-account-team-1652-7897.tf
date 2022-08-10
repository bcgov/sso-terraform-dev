module "service-account-team-1652-7897" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1652-7897"
  team_id     = 1652
  description = "CSS App Created"
}
