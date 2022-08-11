module "client_tians-testing-silver-in-silver-7641" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "tians-testing-silver-in-silver-7641"
  client_name = "tians-testing-silver-in-silver-7641"
  valid_redirect_uris = [
    "https://example"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://example",
    "+"
  ]
}
