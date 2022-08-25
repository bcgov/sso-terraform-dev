module "service-account-team-1886-7987" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1886-7987"
  team_id     = 1886
  description = "CSS App Created"
}
