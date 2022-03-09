module "client_ent-team-notification-for-non-b-ce-id-6537" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ent-team-notification-for-non-b-ce-id-6537"
  valid_redirect_uris = [
    "http://dev.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://dev.com",
    "+"
  ]
}
