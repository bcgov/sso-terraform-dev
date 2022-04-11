module "junmin-local-1" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "junmin-local-1"
  valid_redirect_uris = [
    "http://localhost:3030"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3030",
    "+"
  ]
}
