module "service-account-team-2081-8385" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2081-8385"
  team_id     = 2081
  description = "CSS App Created"
}
