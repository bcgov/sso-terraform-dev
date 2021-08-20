module "client_test-project-3-08-20-http-test-https-bcgov-github-io-sso-terraform-dev-request-96-https-bcgov-github-io-sso-terraform-dev-request-960-https-bcgov-github-io-sso-terraform-dev-request-9600-960" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-3-08-20-http-test-https-bcgov-github-io-sso-terraform-dev-request-96-https-bcgov-github-io-sso-terraform-dev-request-960-https-bcgov-github-io-sso-terraform-dev-request-9600-960"
  valid_redirect_uris = [
    "http://test"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
