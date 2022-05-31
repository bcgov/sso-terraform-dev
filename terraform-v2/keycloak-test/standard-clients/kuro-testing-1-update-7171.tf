module "kuro-testing-1-update-7171" {
  source    = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id  = var.standard_realm_id
  client_id = "kuro-testing-1-update-7171"
  valid_redirect_uris = [
    "http://testupdate.com"
  ]
  idps = [
    "idir",
    "bceidbasic"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://testupdate.com",
    "+"
  ]
}
