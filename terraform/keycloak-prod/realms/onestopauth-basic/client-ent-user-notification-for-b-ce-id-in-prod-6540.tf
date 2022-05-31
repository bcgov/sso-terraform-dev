module "client_ent-user-notification-for-b-ce-id-in-prod-6540" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "ent-user-notification-for-b-ce-id-in-prod-6540"
  client_name = "ent-user-notification-for-b-ce-id-in-prod-6540"
  valid_redirect_uris = [
    "http://prod.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://prod.com",
    "+"
  ]
}
