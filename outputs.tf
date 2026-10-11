output "apigateway_api_validation_lookup_id" {
  description = "Map of id values across all apigateway_api_validation_lookup, keyed the same as var.apigateway_api_validation_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_apigateway_api_validation.apigateway_api_validation_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigateway_api_validation_lookup_api_id" {
  description = "Map of api_id values across all apigateway_api_validation_lookup, keyed the same as var.apigateway_api_validation_lookup except keys with no api_id are omitted"
  value       = { for k, v in data.oci_apigateway_api_validation.apigateway_api_validation_lookup : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "apigateway_api_validation_lookup_validations" {
  description = "Map of validations values across all apigateway_api_validation_lookup, keyed the same as var.apigateway_api_validation_lookup except keys with no validations are omitted"
  value       = { for k, v in data.oci_apigateway_api_validation.apigateway_api_validation_lookup : k => v.validations if v.validations != null && length(v.validations) > 0 }
}

