module "service-account-team-2014-8311" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2014-8311"
  team_id     = 2014
  description = "CSS App Created"
}
