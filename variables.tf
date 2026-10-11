variable "sagemaker_labeling_jobs" {
  description = <<EOT
Map of sagemaker_labeling_jobs, attributes below
Required:
    - label_attribute_name
    - labeling_job_name
    - role_arn
Optional:
    - label_category_config_s3_uri
    - region
    - tags
    - human_task_config (block):
        - annotation_consolidation_config (optional, block):
            - annotation_consolidation_lambda_arn (required)
        - max_concurrent_task_count (optional)
        - number_of_human_workers_per_data_object (required)
        - pre_human_task_lambda_arn (optional)
        - public_workforce_task_price (optional, block):
            - amount_in_usd (optional, block):
                - cents (optional)
                - dollars (optional)
                - tenth_fractions_of_a_cent (optional)
        - task_availability_lifetime_in_seconds (optional)
        - task_description (required)
        - task_keywords (optional)
        - task_time_limit_in_seconds (required)
        - task_title (required)
        - ui_config (optional, block):
            - human_task_ui_arn (optional)
            - ui_template_s3_uri (optional)
        - workteam_arn (required)
    - input_config (block):
        - data_attributes (optional, block):
            - content_classifiers (optional)
        - data_source (optional, block):
            - s3_data_source (optional, block):
                - manifest_s3_uri (required)
            - sns_data_source (optional, block):
                - sns_topic_arn (required)
    - labeling_job_algorithms_config (block):
        - initial_active_learning_model_arn (optional)
        - labeling_job_algorithm_specification_arn (required)
        - labeling_job_resource_config (optional, block):
            - volume_kms_key_id (optional)
            - vpc_config (optional, block):
                - security_group_ids (required)
                - subnets (required)
    - output_config (block):
        - kms_key_id (optional)
        - s3_output_path (required)
        - sns_topic_arn (optional)
    - stopping_conditions (block):
        - max_human_labeled_object_count (optional)
        - max_percentage_of_input_dataset_labeled (optional)
EOT

  type = map(object({
    label_attribute_name         = string
    labeling_job_name            = string
    role_arn                     = string
    label_category_config_s3_uri = optional(string)
    region                       = optional(string)
    tags                         = optional(map(string))
    human_task_config = optional(list(object({
      annotation_consolidation_config = optional(list(object({
        annotation_consolidation_lambda_arn = string
      })))
      max_concurrent_task_count               = optional(number)
      number_of_human_workers_per_data_object = number
      pre_human_task_lambda_arn               = optional(string)
      public_workforce_task_price = optional(list(object({
        amount_in_usd = optional(list(object({
          cents                     = optional(number)
          dollars                   = optional(number)
          tenth_fractions_of_a_cent = optional(number)
        })))
      })))
      task_availability_lifetime_in_seconds = optional(number)
      task_description                      = string
      task_keywords                         = optional(set(string))
      task_time_limit_in_seconds            = number
      task_title                            = string
      ui_config = optional(list(object({
        human_task_ui_arn  = optional(string)
        ui_template_s3_uri = optional(string)
      })))
      workteam_arn = string
    })))
    input_config = optional(list(object({
      data_attributes = optional(list(object({
        content_classifiers = optional(set(string))
      })))
      data_source = optional(list(object({
        s3_data_source = optional(list(object({
          manifest_s3_uri = string
        })))
        sns_data_source = optional(list(object({
          sns_topic_arn = string
        })))
      })))
    })))
    labeling_job_algorithms_config = optional(list(object({
      initial_active_learning_model_arn        = optional(string)
      labeling_job_algorithm_specification_arn = string
      labeling_job_resource_config = optional(list(object({
        volume_kms_key_id = optional(string)
        vpc_config = optional(list(object({
          security_group_ids = set(string)
          subnets            = set(string)
        })))
      })))
    })))
    output_config = optional(list(object({
      kms_key_id     = optional(string)
      s3_output_path = string
      sns_topic_arn  = optional(string)
    })))
    stopping_conditions = optional(list(object({
      max_human_labeled_object_count          = optional(number)
      max_percentage_of_input_dataset_labeled = optional(number)
    })))
  }))
}

