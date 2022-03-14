module "client_ent-delete-testing-6700" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ent-delete-testing-6700"
  valid_redirect_uris = [
    "http://prodtest.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://prodtest.com",
    "+"
  ]
}
