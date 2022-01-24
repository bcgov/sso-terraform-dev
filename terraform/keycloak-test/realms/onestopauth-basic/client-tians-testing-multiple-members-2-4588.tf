module "client_tians-testing-multiple-members-2-4588" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-multiple-members-2-4588"
  valid_redirect_uris = [
    "https://example"
  ]
  description = "CSS App Created"
}
