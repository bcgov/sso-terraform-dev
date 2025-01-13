terraform {
  required_version = ">= 0.15.3"

  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = ">=5.0.0"
    }
  }
}
