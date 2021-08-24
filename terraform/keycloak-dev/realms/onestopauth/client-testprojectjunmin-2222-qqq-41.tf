module "client_testprojectjunmin-2222-qqq-41" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-qqq-41"
  valid_redirect_uris = [
    "https://stackoverflow.com/questions/3809401/what-is-a-good-regular-expression-to-match-a-url"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
