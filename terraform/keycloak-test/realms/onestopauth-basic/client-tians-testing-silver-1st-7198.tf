module "client_tians-testing-silver-1st-7198" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-silver-1st-7198"
  valid_redirect_uris = [
    "https://exampleTest"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleTest",
    "+"
  ]
}
