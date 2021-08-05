module "client_asdfeeeeeeeeeeeeeeeeeee-133" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdfeeeeeeeeeeeeeeeeeee-133"
  valid_redirect_uris = [
    "http://localhost:1000111"
  ]
}
