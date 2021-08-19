module "client_e-test-1-08-19-760" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "e-test-1-08-19-760"
  valid_redirect_uris = [
    "http://test",
    "https://bcgov.github.io/sso-terraform-dev/request/760",
    "https://bcgov.github.io/sso-terraform-dev/request/760",
    "https://bcgov.github.io/sso-terraform-dev/request/760"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
