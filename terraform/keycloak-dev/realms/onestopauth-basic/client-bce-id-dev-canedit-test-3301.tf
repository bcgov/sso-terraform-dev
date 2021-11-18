module "client_bce-id-dev-canedit-test-3301" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "bce-id-dev-canedit-test-3301"
  valid_redirect_uris = [
    "https://bcgov.github.io/DEV"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
