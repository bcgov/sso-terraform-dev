module "service-account-team-2316-9264" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-2316-9264"
  team_id     = 2316
  description = "CSS App Created"
}
