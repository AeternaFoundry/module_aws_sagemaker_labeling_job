output "sagemaker_labeling_jobs_failure_reason" {
  description = "Map of failure_reason values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.failure_reason if v.failure_reason != null && length(v.failure_reason) > 0 }
}
output "sagemaker_labeling_jobs_human_task_config" {
  description = "Map of human_task_config values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.human_task_config if v.human_task_config != null && length(v.human_task_config) > 0 }
}
output "sagemaker_labeling_jobs_input_config" {
  description = "Map of input_config values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.input_config if v.input_config != null && length(v.input_config) > 0 }
}
output "sagemaker_labeling_jobs_job_reference_code" {
  description = "Map of job_reference_code values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.job_reference_code if v.job_reference_code != null && length(v.job_reference_code) > 0 }
}
output "sagemaker_labeling_jobs_label_attribute_name" {
  description = "Map of label_attribute_name values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.label_attribute_name if v.label_attribute_name != null && length(v.label_attribute_name) > 0 }
}
output "sagemaker_labeling_jobs_label_category_config_s3_uri" {
  description = "Map of label_category_config_s3_uri values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.label_category_config_s3_uri if v.label_category_config_s3_uri != null && length(v.label_category_config_s3_uri) > 0 }
}
output "sagemaker_labeling_jobs_label_counters" {
  description = "Map of label_counters values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.label_counters if v.label_counters != null && length(v.label_counters) > 0 }
}
output "sagemaker_labeling_jobs_labeling_job_algorithms_config" {
  description = "Map of labeling_job_algorithms_config values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.labeling_job_algorithms_config if v.labeling_job_algorithms_config != null && length(v.labeling_job_algorithms_config) > 0 }
}
output "sagemaker_labeling_jobs_labeling_job_arn" {
  description = "Map of labeling_job_arn values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.labeling_job_arn if v.labeling_job_arn != null && length(v.labeling_job_arn) > 0 }
}
output "sagemaker_labeling_jobs_labeling_job_name" {
  description = "Map of labeling_job_name values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.labeling_job_name if v.labeling_job_name != null && length(v.labeling_job_name) > 0 }
}
output "sagemaker_labeling_jobs_labeling_job_status" {
  description = "Map of labeling_job_status values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.labeling_job_status if v.labeling_job_status != null && length(v.labeling_job_status) > 0 }
}
output "sagemaker_labeling_jobs_output_config" {
  description = "Map of output_config values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.output_config if v.output_config != null && length(v.output_config) > 0 }
}
output "sagemaker_labeling_jobs_region" {
  description = "Map of region values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_labeling_jobs_role_arn" {
  description = "Map of role_arn values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "sagemaker_labeling_jobs_stopping_conditions" {
  description = "Map of stopping_conditions values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.stopping_conditions if v.stopping_conditions != null && length(v.stopping_conditions) > 0 }
}
output "sagemaker_labeling_jobs_tags" {
  description = "Map of tags values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_labeling_jobs_tags_all" {
  description = "Map of tags_all values across all sagemaker_labeling_jobs, keyed the same as var.sagemaker_labeling_jobs"
  value       = { for k, v in aws_sagemaker_labeling_job.sagemaker_labeling_jobs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

