module "service-account-team-1986-8709" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1986-8709"
  team_id     = 1986
  description = "CSS App Created"
}
