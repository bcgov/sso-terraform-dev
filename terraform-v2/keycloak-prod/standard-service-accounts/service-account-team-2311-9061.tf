module "service-account-team-2311-9061" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2311-9061"
  team_id     = 2311
  description = "CSS App Created"
}
