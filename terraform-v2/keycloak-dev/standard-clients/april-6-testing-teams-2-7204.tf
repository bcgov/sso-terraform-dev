module "april-6-testing-teams-2-7204" {
  source    = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id  = var.standard_realm_id
  client_id = "april-6-testing-teams-2-7204"
  valid_redirect_uris = [
    "localhost://dev"
  ]
  roles = [
    "TEST Role April 7"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "localhost://dev",
    "+"
  ]
}
