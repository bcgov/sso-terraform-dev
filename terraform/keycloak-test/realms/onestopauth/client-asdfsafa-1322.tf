module "client_asdfsafa-1322" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdfsafa-1322"
  valid_redirect_uris = [
    "http://www.google.ca12133"
  ]
}
