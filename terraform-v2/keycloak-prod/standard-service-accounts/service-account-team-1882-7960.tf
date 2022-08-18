module "service-account-team-1882-7960" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1882-7960"
  team_id     = 1882
  description = "CSS App Created"
}
