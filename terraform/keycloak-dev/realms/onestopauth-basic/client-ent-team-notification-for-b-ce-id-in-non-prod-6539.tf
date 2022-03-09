module "client_ent-team-notification-for-b-ce-id-in-non-prod-6539" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ent-team-notification-for-b-ce-id-in-non-prod-6539"
  valid_redirect_uris = [
    "http://devchange.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://devchange.com",
    "+"
  ]
}
