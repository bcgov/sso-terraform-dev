module "service-account-team-1960-8087" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1960-8087"
  team_id     = 1960
  description = "CSS App Created"
}
