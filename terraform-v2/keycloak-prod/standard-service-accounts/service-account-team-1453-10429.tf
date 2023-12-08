module "service-account-team-1453-10429" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1453-10429"
  team_id     = 1453
  description = "CSS App Created"
}
