module "client_tian-1-testing-silver-7675" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "tian-1-testing-silver-7675"
  client_name = "tian-1-testing-silver-7675"
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
