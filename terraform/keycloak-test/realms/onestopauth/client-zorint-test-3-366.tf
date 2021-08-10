module "client_zorint-test-3-366" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "zorint-test-3-366"
  valid_redirect_uris = [
    "https://www.google.ca",
    "https://www.google.ca/123456485"
  ]
}
