module "junmin-local-gold-2-7134" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "junmin-local-gold-2-7134"
  valid_redirect_uris = [
    "http://localhost:3011"
  ]
  idps = [
    "idir"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3011",
    "+"
  ]
}
