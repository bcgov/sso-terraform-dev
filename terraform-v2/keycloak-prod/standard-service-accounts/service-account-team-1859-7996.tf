module "service-account-team-1859-7996" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1859-7996"
  team_id     = 1859
  description = "CSS App Created"
}
