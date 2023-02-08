module "service-account-team-1651-8443" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1651-8443"
  team_id     = 1651
  description = "CSS App Created"
}
