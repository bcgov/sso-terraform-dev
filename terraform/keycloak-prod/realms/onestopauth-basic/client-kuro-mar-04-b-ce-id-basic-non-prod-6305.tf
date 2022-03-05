module "client_kuro-mar-04-b-ce-id-basic-non-prod-6305" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-04-b-ce-id-basic-non-prod-6305"
  valid_redirect_uris = [
    "http://ProdBCeID.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://ProdBCeID.com",
    "+"
  ]
}
