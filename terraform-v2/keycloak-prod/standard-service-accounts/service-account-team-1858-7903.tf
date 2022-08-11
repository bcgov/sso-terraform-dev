module "service-account-team-1858-7903" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1858-7903"
  team_id     = 1858
  description = "CSS App Created"
}
