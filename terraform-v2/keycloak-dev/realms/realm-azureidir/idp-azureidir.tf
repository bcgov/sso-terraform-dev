# see https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/oidc_identity_provider
resource "keycloak_oidc_identity_provider" "azureidir" {
  realm        = keycloak_realm.this.id
  alias        = var.realm_name
  display_name = var.realm_name

  enabled     = true
  store_token = false
  trust_email = false
  sync_mode   = "IMPORT"

  authorization_url = "${var.azureidir_keycloak_url}/auth"
  token_url         = "${var.azureidir_keycloak_url}/token"
  user_info_url     = "${var.azureidir_keycloak_url}/userinfo"
  client_id         = "<UPDATE_ME>"
  client_secret     = "<UPDATE_ME>"

  validate_signature = false

  extra_config = {
    "clientAuthMethod" = "client_secret_post"
  }
}

resource "keycloak_custom_identity_provider_mapper" "azureidir_firstname" {
  realm                    = keycloak_realm.this.id
  name                     = "first_name"
  identity_provider_alias  = keycloak_oidc_identity_provider.azureidir.alias
  identity_provider_mapper = "oidc-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "claim"          = "given_name"
    "user.attribute" = "firstName"
  }
}

resource "keycloak_custom_identity_provider_mapper" "azureidir_lastname" {
  realm                    = keycloak_realm.this.id
  name                     = "last_name"
  identity_provider_alias  = keycloak_oidc_identity_provider.azureidir.alias
  identity_provider_mapper = "oidc-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "claim"          = "family_name"
    "user.attribute" = "lastName"
  }
}

resource "keycloak_custom_identity_provider_mapper" "azureidir_displayname" {
  realm                    = keycloak_realm.this.id
  name                     = "display_name"
  identity_provider_alias  = keycloak_oidc_identity_provider.azureidir.alias
  identity_provider_mapper = "oidc-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "claim"          = "name"
    "user.attribute" = "display_name"
  }
}

resource "keycloak_custom_identity_provider_mapper" "azureidir_email" {
  realm                    = keycloak_realm.this.id
  name                     = "email"
  identity_provider_alias  = keycloak_oidc_identity_provider.azureidir.alias
  identity_provider_mapper = "oidc-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "claim"          = "email"
    "user.attribute" = "email"
  }
}

resource "keycloak_custom_identity_provider_mapper" "azureidir_idir_username" {
  realm                    = keycloak_realm.this.id
  name                     = "idir_username"
  identity_provider_alias  = keycloak_oidc_identity_provider.azureidir.alias
  identity_provider_mapper = "oidc-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "claim"          = "samaccountname"
    "user.attribute" = "idir_username"
  }
}

resource "keycloak_custom_identity_provider_mapper" "azureidir_idir_user_guid" {
  realm                    = keycloak_realm.this.id
  name                     = "idir_user_guid"
  identity_provider_alias  = keycloak_oidc_identity_provider.azureidir.alias
  identity_provider_mapper = "oidc-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "claim"          = "bcgovGUID"
    "user.attribute" = "idir_user_guid"
  }
}
