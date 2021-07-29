module "client_junminclienttest-100-67" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junminclienttest-100-67"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
