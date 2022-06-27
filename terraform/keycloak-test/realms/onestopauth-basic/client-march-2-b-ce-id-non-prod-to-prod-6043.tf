module "client_march-2-b-ce-id-non-prod-to-prod-6043" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "march-2-b-ce-id-non-prod-to-prod-6043"
  client_name = "march-2-b-ce-id-non-prod-to-prod-6043"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange123"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https:///www.test.ca/devChange123",
    "+"
  ]
}
