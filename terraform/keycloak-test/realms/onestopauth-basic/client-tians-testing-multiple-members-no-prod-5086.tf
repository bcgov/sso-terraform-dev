module "client_tians-testing-multiple-members-no-prod-5086" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-multiple-members-no-prod-5086"
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
