module "client_testemailagain-1555" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testemailagain-1555"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
  description = "CSS App Created"
}
