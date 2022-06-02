module "client_css-happy-path-end-2-end-final-1-7635" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "css-happy-path-end-2-end-final-1-7635"
  client_name = "css-happy-path-end-2-end-final-1-7635"
  valid_redirect_uris = [
    "https://localhost:3000"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://localhost:3000",
    "+"
  ]
}
