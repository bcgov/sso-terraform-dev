module "client_zorin-test-aug-9-364" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "zorin-test-aug-9-364"
  valid_redirect_uris = [
    "http://www.google.ca"
  ]
}
