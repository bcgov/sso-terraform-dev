module "service-account-team-1852-7906" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1852-7906"
  team_id     = 1852
  description = "CSS App Created"
}
