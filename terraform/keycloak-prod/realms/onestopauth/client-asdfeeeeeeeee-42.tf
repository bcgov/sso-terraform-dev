module "client_asdfeeeeeeeee-42" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdfeeeeeeeee-42"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
