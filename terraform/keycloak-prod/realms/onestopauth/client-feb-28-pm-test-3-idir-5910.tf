module "client_feb-28-pm-test-3-idir-5910" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-28-pm-test-3-idir-5910"
  valid_redirect_uris = [
    "http://localhost:10023"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:10023",
    "+"
  ]
}
