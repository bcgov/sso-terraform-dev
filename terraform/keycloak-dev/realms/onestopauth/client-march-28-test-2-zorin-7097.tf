module "client_march-28-test-2-zorin-7097" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-28-test-2-zorin-7097"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange2"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https:///www.test.ca/devChange2",
    "+"
  ]
}
