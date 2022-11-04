module "service-account-team-1820-8291" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1820-8291"
  team_id     = 1820
  description = "CSS App Created"
}
