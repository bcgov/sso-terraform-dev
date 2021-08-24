module "client_aug-18-744-pm-695" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-18-744-pm-695"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
}
