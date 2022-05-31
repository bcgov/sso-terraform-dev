module "service-account-team-1519-7558" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1519-7558"
  team_id     = 1519
  description = "CSS App Created"
}
