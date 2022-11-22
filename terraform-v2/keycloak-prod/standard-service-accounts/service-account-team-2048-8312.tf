module "service-account-team-2048-8312" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2048-8312"
  team_id     = 2048
  description = "CSS App Created"
}
