terraform {
  required_version = ">= 0.15.5"

  backend "s3" {
    bucket = "xgr00q-dev-keycloak"
    key    = "keycloak/gold-custom"
    region = "ca-central-1"
  }

  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.0.0"
    }
  }
}
