module "client_ent-part-2-user-notification-for-non-b-ce-id-6542" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "ent-part-2-user-notification-for-non-b-ce-id-6542"
  client_name = "ent-part-2-user-notification-for-non-b-ce-id-6542"
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
