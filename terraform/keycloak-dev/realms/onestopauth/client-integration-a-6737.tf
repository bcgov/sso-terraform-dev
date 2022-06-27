module "client_integration-a-6737" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "integration-a-6737"
  client_name = "integration-a-6737"
  valid_redirect_uris = [
    "http://example.ccaa"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://example.ccaa",
    "+"
  ]
}
