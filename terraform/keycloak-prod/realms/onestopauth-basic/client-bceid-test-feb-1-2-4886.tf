module "client_bceid-test-feb-1-2-4886" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "bceid-test-feb-1-2-4886"
  valid_redirect_uris = [
    "https://example2"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://example2",
    "+"
  ]
}
