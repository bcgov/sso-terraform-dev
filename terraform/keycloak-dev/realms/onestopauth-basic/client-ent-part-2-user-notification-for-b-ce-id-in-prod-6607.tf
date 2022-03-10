module "client_ent-part-2-user-notification-for-b-ce-id-in-prod-6607" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ent-part-2-user-notification-for-b-ce-id-in-prod-6607"
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
