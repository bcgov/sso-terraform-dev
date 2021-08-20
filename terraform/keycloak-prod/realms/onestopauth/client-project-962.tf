module "client_project-962" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "project-962"
  valid_redirect_uris = [
    "http://test"
  ]
}
