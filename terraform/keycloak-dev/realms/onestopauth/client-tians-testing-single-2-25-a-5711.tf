module "client_tians-testing-single-2-25-a-5711" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-single-2-25-a-5711"
  valid_redirect_uris = [
    "https://exampledfsasd"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampledfsasd",
    "+"
  ]
}
