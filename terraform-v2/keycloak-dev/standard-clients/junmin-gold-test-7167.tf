module "junmin-gold-test-7167" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "junmin-gold-test-7167"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  roles = [
    "admin",
    "manager",
    "user"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3000",
    "+"
  ]
}
