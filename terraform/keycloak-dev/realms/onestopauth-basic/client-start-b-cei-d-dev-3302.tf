module "client_start-b-cei-d-dev-3302" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "start-b-cei-d-dev-3302"
  valid_redirect_uris = [
    "https://bcgov.github.io/sso-terraform-dev/request/2410"
  ]
  description = "CSS App Created"
}
