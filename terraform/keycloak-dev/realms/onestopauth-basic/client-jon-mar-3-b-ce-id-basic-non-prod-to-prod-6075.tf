module "client_jon-mar-3-b-ce-id-basic-non-prod-to-prod-6075" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-mar-3-b-ce-id-basic-non-prod-to-prod-6075"
  valid_redirect_uris = [
    "http://bceidDev.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://bceidDev.com",
    "+"
  ]
}
