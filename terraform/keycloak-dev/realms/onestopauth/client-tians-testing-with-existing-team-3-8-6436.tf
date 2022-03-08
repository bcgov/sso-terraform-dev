module "client_tians-testing-with-existing-team-3-8-6436" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-with-existing-team-3-8-6436"
  valid_redirect_uris = [
    "https://existingTeam"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://existingTeam",
    "+"
  ]
}
