module "client_tians-testing-multiple-members-3-8-6403" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-multiple-members-3-8-6403"
  valid_redirect_uris = [
    "https://exampledfsasd"
  ]
  description = "CSS App Created"
}
