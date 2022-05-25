terraform {
  required_version = ">= 0.15.5"

  backend "s3" {
    bucket = "xgr00q-dev-keycloak"
    key    = "keycloak/silver"
    region = "ca-central-1"
  }
}
