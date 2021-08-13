module "client_http-test-564" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "http-test-564"
  valid_redirect_uris = [
    "htttp://",
    "https://bcgov.github.io/sso-terraform-dev/request/564",
    "https://bcgov.github.io/sso-terraform-dev/request/564",
    "https://bcgov.github.io/sso-terraform-dev/request/564",
    "https://bcgov.github.io/sso-terraform-dev/request/564",
    "https://bcgov.github.io/sso-terraform-dev/request/564",
    "https://bcgov.github.io/sso-terraform-dev/request/564",
    "https://bcgov.github.io/sso-terraform-dev/request/564"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
