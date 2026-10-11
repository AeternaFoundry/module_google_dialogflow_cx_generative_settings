output "dialogflow_cx_generative_settings_id" {
  description = "Map of id values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_generative_settings_fallback_settings" {
  description = "Map of fallback_settings values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no fallback_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => one(v.fallback_settings) if v.fallback_settings != null && length(v.fallback_settings) > 0 }
}
output "dialogflow_cx_generative_settings_generative_safety_settings" {
  description = "Map of generative_safety_settings values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no generative_safety_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => one(v.generative_safety_settings) if v.generative_safety_settings != null && length(v.generative_safety_settings) > 0 }
}
output "dialogflow_cx_generative_settings_knowledge_connector_settings" {
  description = "Map of knowledge_connector_settings values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no knowledge_connector_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => one(v.knowledge_connector_settings) if v.knowledge_connector_settings != null && length(v.knowledge_connector_settings) > 0 }
}
output "dialogflow_cx_generative_settings_language_code" {
  description = "Map of language_code values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no language_code are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "dialogflow_cx_generative_settings_llm_model_settings" {
  description = "Map of llm_model_settings values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no llm_model_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => one(v.llm_model_settings) if v.llm_model_settings != null && length(v.llm_model_settings) > 0 }
}
output "dialogflow_cx_generative_settings_name" {
  description = "Map of name values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_generative_settings_parent" {
  description = "Map of parent values across all dialogflow_cx_generative_settings, keyed the same as var.dialogflow_cx_generative_settings except keys with no parent are omitted"
  value       = { for k, v in google_dialogflow_cx_generative_settings.dialogflow_cx_generative_settings : k => v.parent if v.parent != null && length(v.parent) > 0 }
}

