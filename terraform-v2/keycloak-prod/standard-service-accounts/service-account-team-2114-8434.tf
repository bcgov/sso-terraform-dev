module "service-account-team-2114-8434" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2114-8434"
  team_id     = 2114
  description = "CSS App Created"
}
