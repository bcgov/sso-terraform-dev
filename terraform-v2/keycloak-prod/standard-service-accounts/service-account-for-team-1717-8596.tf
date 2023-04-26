module "service-account-team-1717-8596" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1717-8596"
  team_id     = 1717
  description = "CSS App Created"
}
