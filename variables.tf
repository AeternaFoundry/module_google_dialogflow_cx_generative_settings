variable "dialogflow_cx_generative_settings" {
  description = <<EOT
Map of dialogflow_cx_generative_settings, attributes below
Required:
    - language_code
Optional:
    - parent
    - fallback_settings (block):
        - prompt_templates (optional, block):
            - display_name (optional)
            - frozen (optional)
            - prompt_text (optional)
        - selected_prompt (optional)
    - generative_safety_settings (block):
        - banned_phrases (optional, block):
            - language_code (required)
            - text (required)
        - default_banned_phrase_match_strategy (optional)
    - knowledge_connector_settings (block):
        - agent (optional)
        - agent_identity (optional)
        - agent_scope (optional)
        - business (optional)
        - business_description (optional)
        - disable_data_store_fallback (optional)
    - llm_model_settings (block):
        - model (optional)
        - prompt_text (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    language_code = string
    parent        = optional(string)
    fallback_settings = optional(object({
      prompt_templates = optional(list(object({
        display_name = optional(string)
        frozen       = optional(bool)
        prompt_text  = optional(string)
      })))
      selected_prompt = optional(string)
    }))
    generative_safety_settings = optional(object({
      banned_phrases = optional(list(object({
        language_code = string
        text          = string
      })))
      default_banned_phrase_match_strategy = optional(string)
    }))
    knowledge_connector_settings = optional(object({
      agent                       = optional(string)
      agent_identity              = optional(string)
      agent_scope                 = optional(string)
      business                    = optional(string)
      business_description        = optional(string)
      disable_data_store_fallback = optional(bool)
    }))
    llm_model_settings = optional(object({
      model       = optional(string)
      prompt_text = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

