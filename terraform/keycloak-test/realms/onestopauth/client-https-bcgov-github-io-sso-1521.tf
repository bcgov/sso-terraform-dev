module "client_https-bcgov-github-io-sso-1521" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "https-bcgov-github-io-sso-1521"
  valid_redirect_uris = [
    "http://test2"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
