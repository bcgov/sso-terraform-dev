module "client_aug-18-748-test-diff-email-696" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-18-748-test-diff-email-696"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
}
