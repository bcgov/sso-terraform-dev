module "client_junmin-request-34" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junmin-request-34"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
