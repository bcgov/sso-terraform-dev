module "client_march-1-b-ce-id-non-prod-teams-5911" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-1-b-ce-id-non-prod-teams-5911"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https:///www.test.ca/devChange",
    "+"
  ]
}
