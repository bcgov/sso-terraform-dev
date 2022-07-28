module "client_test-nk-project-7862" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "test-nk-project-7862"
  client_name = "test-nk-project-7862"
  valid_redirect_uris = [
    "http://example"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://example",
    "+"
  ]
}
