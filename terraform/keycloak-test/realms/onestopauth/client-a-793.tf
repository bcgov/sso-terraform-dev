module "client_a-793" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "a-793"
  valid_redirect_uris = [
    "http://b"
  ]
}
