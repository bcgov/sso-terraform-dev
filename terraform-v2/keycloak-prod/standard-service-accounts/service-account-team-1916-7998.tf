module "service-account-team-1916-7998" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1916-7998"
  team_id     = 1916
  description = "CSS App Created"
}
