module "service-account-team-1861-8113" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1861-8113"
  team_id     = 1861
  description = "CSS App Created"
}
