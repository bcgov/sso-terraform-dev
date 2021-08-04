module "client_ztest-134" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ztest-134"
  valid_redirect_uris = [
    "https://googleredirect.om"
  ]
}
