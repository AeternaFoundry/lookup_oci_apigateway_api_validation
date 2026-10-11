data "oci_apigateway_api_validation" "apigateway_api_validation_lookup" {
  for_each = var.apigateway_api_validation_lookup

  api_id = each.value.api_id
}

