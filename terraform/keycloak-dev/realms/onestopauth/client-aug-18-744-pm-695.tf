module "client_aug-18-744-pm-695" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-18-744-pm-695"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
}
