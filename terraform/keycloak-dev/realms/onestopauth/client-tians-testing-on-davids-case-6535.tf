module "client_tians-testing-on-davids-case-6535" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-on-davids-case-6535"
  valid_redirect_uris = [
    "https://exampleChangeWithoutRequester"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleChangeWithoutRequester",
    "+"
  ]
}
