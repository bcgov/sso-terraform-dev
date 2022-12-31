module "service-account-team-2113-8418" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2113-8418"
  team_id     = 2113
  description = "CSS App Created"
}
