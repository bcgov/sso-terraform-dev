module "service-account-team-1959-8435" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1959-8435"
  team_id     = 1959
  description = "CSS App Created"
}
