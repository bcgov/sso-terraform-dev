module "client_tian-part-3-ticket-3-6637" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tian-part-3-ticket-3-6637"
  valid_redirect_uris = [
    "https://exampleddddd"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleddddd",
    "+"
  ]
}
