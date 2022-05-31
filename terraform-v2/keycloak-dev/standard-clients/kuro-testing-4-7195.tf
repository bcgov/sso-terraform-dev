module "kuro-testing-4-7195" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "kuro-testing-4-7195"
  valid_redirect_uris = [
    "http://test.com"
  ]
  idps = [
    "bceidbasic"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://test.com",
    "+"
  ]
}
