module "junmin-local-gold-2-7134" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "junmin-local-gold-2-7134"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  idps = [
    "idir"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3000",
    "+"
  ]
}
