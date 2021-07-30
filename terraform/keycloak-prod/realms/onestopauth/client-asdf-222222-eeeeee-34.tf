module "client_asdf-222222-eeeeee-34" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdf-222222-eeeeee-34"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
