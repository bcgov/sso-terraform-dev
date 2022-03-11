module "client_ent-part-3-up-additional-email-update-integration-6638" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ent-part-3-up-additional-email-update-integration-6638"
  valid_redirect_uris = [
    "http://testchange.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://testchange.com",
    "+"
  ]
}
