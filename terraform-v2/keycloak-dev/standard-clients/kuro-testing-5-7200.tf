module "kuro-testing-5-7200" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "kuro-testing-5-7200"
  valid_redirect_uris = [
    "http://test2.com"
  ]
  idps = [
    "bceidboth"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://test2.com",
    "+"
  ]
}
