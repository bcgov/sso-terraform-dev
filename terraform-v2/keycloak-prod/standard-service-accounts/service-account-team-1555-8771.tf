module "service-account-team-1555-8771" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1555-8771"
  team_id     = 1555
  description = "CSS App Created"
}
