module "client_april-18-silver-b-ce-id-basic-7397" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "april-18-silver-b-ce-id-basic-7397"
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://bcgov.github.io/keycloak-example-apps/",
    "+"
  ]
}
