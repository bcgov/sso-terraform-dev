# see https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/saml_identity_provider
resource "keycloak_saml_identity_provider" "idir" {
  realm        = keycloak_realm.this.id
  alias        = local.idir_idp_name
  display_name = "IDIR"

  enabled     = true
  store_token = false
  trust_email = false
  sync_mode   = "FORCE"

  entity_id                  = "${var.keycloak_url}/auth/realms/${local.idir_idp_name}"
  single_sign_on_service_url = "https://sfstest7.gov.bc.ca/affwebservices/public/saml2sso"
  single_logout_service_url  = "https://sfstest7.gov.bc.ca/affwebservices/public/saml2slo"

  name_id_policy_format = "Persistent"

  backchannel_supported      = false
  post_binding_response      = true
  post_binding_authn_request = true
  post_binding_logout        = true

  force_authn         = true
  validate_signature  = true
  signing_certificate = "<UPDATE_ME>"

  extra_config = {
    "authnContextComparisonType" = "exact"
  }

  lifecycle {
    ignore_changes = [
      signing_certificate,
    ]
  }
}

resource "keycloak_custom_identity_provider_mapper" "idir_mapper_firstname" {
  realm                    = keycloak_realm.this.id
  name                     = "first_name"
  identity_provider_alias  = keycloak_saml_identity_provider.idir.alias
  identity_provider_mapper = "saml-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "attribute.name" = "firstname"
    "user.attribute" = "firstName"
  }
}

resource "keycloak_custom_identity_provider_mapper" "idir_mapper_lastname" {
  realm                    = keycloak_realm.this.id
  name                     = "last_name"
  identity_provider_alias  = keycloak_saml_identity_provider.idir.alias
  identity_provider_mapper = "saml-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "attribute.name" = "lastname"
    "user.attribute" = "lastName"
  }
}

resource "keycloak_custom_identity_provider_mapper" "idir_mapper_displayname" {
  realm                    = keycloak_realm.this.id
  name                     = "display_name"
  identity_provider_alias  = keycloak_saml_identity_provider.idir.alias
  identity_provider_mapper = "saml-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "attribute.name" = "displayname"
    "user.attribute" = "display_name"
  }
}

resource "keycloak_custom_identity_provider_mapper" "idir_mapper_email" {
  realm                    = keycloak_realm.this.id
  name                     = "email"
  identity_provider_alias  = keycloak_saml_identity_provider.idir.alias
  identity_provider_mapper = "saml-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "attribute.name" = "email"
    "user.attribute" = "email"
  }
}

resource "keycloak_custom_identity_provider_mapper" "idir_mapper_idir_user_guid" {
  realm                    = keycloak_realm.this.id
  name                     = "idir_user_guid"
  identity_provider_alias  = keycloak_saml_identity_provider.idir.alias
  identity_provider_mapper = "saml-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "attribute.name" = "useridentifier"
    "user.attribute" = "idir_user_guid"
  }
}

resource "keycloak_custom_identity_provider_mapper" "idir_mapper_idir_username" {
  realm                    = keycloak_realm.this.id
  name                     = "idir_username"
  identity_provider_alias  = keycloak_saml_identity_provider.idir.alias
  identity_provider_mapper = "saml-user-attribute-idp-mapper"

  extra_config = {
    syncMode         = "INHERIT"
    "attribute.name" = "username"
    "user.attribute" = "idir_username"
  }
}

# resource "keycloak_custom_identity_provider_mapper" "idir_mapper_username" {
#   realm                    = keycloak_realm.this.id
#   name                     = "username"
#   identity_provider_alias  = keycloak_saml_identity_provider.idir.alias
#   identity_provider_mapper = "saml-username-idp-mapper"

#   extra_config = {
#     syncMode = "INHERIT"
#     template = "$${ATTRIBUTE.username}"
#   }
# }
