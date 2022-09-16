terraform {
  required_version = ">= 0.15.5"

  backend "s3" {
    bucket = "xgr00q-dev-keycloak"
    key    = "keycloak/gold"
    region = "ca-central-1"
  }

  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "3.10.0"
    }
  }
}
