resource "google_dialogflow_cx_generative_settings" "dialogflow_cx_generative_settings" {
  for_each = var.dialogflow_cx_generative_settings

  language_code = each.value.language_code
  parent        = each.value.parent

  dynamic "fallback_settings" {
    for_each = each.value.fallback_settings != null ? [each.value.fallback_settings] : []
    content {
      dynamic "prompt_templates" {
        for_each = fallback_settings.value.prompt_templates != null ? fallback_settings.value.prompt_templates : []
        content {
          display_name = prompt_templates.value.display_name
          frozen       = prompt_templates.value.frozen
          prompt_text  = prompt_templates.value.prompt_text
        }
      }
      selected_prompt = fallback_settings.value.selected_prompt
    }
  }

  dynamic "generative_safety_settings" {
    for_each = each.value.generative_safety_settings != null ? [each.value.generative_safety_settings] : []
    content {
      dynamic "banned_phrases" {
        for_each = generative_safety_settings.value.banned_phrases != null ? generative_safety_settings.value.banned_phrases : []
        content {
          language_code = banned_phrases.value.language_code
          text          = banned_phrases.value.text
        }
      }
      default_banned_phrase_match_strategy = generative_safety_settings.value.default_banned_phrase_match_strategy
    }
  }

  dynamic "knowledge_connector_settings" {
    for_each = each.value.knowledge_connector_settings != null ? [each.value.knowledge_connector_settings] : []
    content {
      agent                       = knowledge_connector_settings.value.agent
      agent_identity              = knowledge_connector_settings.value.agent_identity
      agent_scope                 = knowledge_connector_settings.value.agent_scope
      business                    = knowledge_connector_settings.value.business
      business_description        = knowledge_connector_settings.value.business_description
      disable_data_store_fallback = knowledge_connector_settings.value.disable_data_store_fallback
    }
  }

  dynamic "llm_model_settings" {
    for_each = each.value.llm_model_settings != null ? [each.value.llm_model_settings] : []
    content {
      model       = llm_model_settings.value.model
      prompt_text = llm_model_settings.value.prompt_text
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

