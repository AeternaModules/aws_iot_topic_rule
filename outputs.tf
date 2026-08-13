output "iot_topic_rules_id" {
  description = "Map of id values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_topic_rules_arn" {
  description = "Map of arn values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_topic_rules_cloudwatch_alarm" {
  description = "Map of cloudwatch_alarm values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.cloudwatch_alarm if v.cloudwatch_alarm != null && length(v.cloudwatch_alarm) > 0 }
}
output "iot_topic_rules_cloudwatch_logs" {
  description = "Map of cloudwatch_logs values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.cloudwatch_logs if v.cloudwatch_logs != null && length(v.cloudwatch_logs) > 0 }
}
output "iot_topic_rules_cloudwatch_metric" {
  description = "Map of cloudwatch_metric values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.cloudwatch_metric if v.cloudwatch_metric != null && length(v.cloudwatch_metric) > 0 }
}
output "iot_topic_rules_description" {
  description = "Map of description values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iot_topic_rules_dynamodb" {
  description = "Map of dynamodb values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.dynamodb if v.dynamodb != null && length(v.dynamodb) > 0 }
}
output "iot_topic_rules_dynamodbv2" {
  description = "Map of dynamodbv2 values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.dynamodbv2 if v.dynamodbv2 != null && length(v.dynamodbv2) > 0 }
}
output "iot_topic_rules_elasticsearch" {
  description = "Map of elasticsearch values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.elasticsearch if v.elasticsearch != null && length(v.elasticsearch) > 0 }
}
output "iot_topic_rules_enabled" {
  description = "Map of enabled values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.enabled if v.enabled != null }
}
output "iot_topic_rules_error_action" {
  description = "Map of error_action values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.error_action if v.error_action != null && length(v.error_action) > 0 }
}
output "iot_topic_rules_firehose" {
  description = "Map of firehose values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.firehose if v.firehose != null && length(v.firehose) > 0 }
}
output "iot_topic_rules_http" {
  description = "Map of http values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.http if v.http != null && length(v.http) > 0 }
}
output "iot_topic_rules_iot_analytics" {
  description = "Map of iot_analytics values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.iot_analytics if v.iot_analytics != null && length(v.iot_analytics) > 0 }
}
output "iot_topic_rules_iot_events" {
  description = "Map of iot_events values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.iot_events if v.iot_events != null && length(v.iot_events) > 0 }
}
output "iot_topic_rules_kafka" {
  description = "Map of kafka values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.kafka if v.kafka != null && length(v.kafka) > 0 }
}
output "iot_topic_rules_kinesis" {
  description = "Map of kinesis values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.kinesis if v.kinesis != null && length(v.kinesis) > 0 }
}
output "iot_topic_rules_lambda" {
  description = "Map of lambda values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.lambda if v.lambda != null && length(v.lambda) > 0 }
}
output "iot_topic_rules_name" {
  description = "Map of name values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iot_topic_rules_region" {
  description = "Map of region values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_topic_rules_republish" {
  description = "Map of republish values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.republish if v.republish != null && length(v.republish) > 0 }
}
output "iot_topic_rules_s3" {
  description = "Map of s3 values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.s3 if v.s3 != null && length(v.s3) > 0 }
}
output "iot_topic_rules_sns" {
  description = "Map of sns values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.sns if v.sns != null && length(v.sns) > 0 }
}
output "iot_topic_rules_sql" {
  description = "Map of sql values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.sql if v.sql != null && length(v.sql) > 0 }
}
output "iot_topic_rules_sql_version" {
  description = "Map of sql_version values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.sql_version if v.sql_version != null && length(v.sql_version) > 0 }
}
output "iot_topic_rules_sqs" {
  description = "Map of sqs values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.sqs if v.sqs != null && length(v.sqs) > 0 }
}
output "iot_topic_rules_step_functions" {
  description = "Map of step_functions values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.step_functions if v.step_functions != null && length(v.step_functions) > 0 }
}
output "iot_topic_rules_tags" {
  description = "Map of tags values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iot_topic_rules_tags_all" {
  description = "Map of tags_all values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "iot_topic_rules_timestream" {
  description = "Map of timestream values across all iot_topic_rules, keyed the same as var.iot_topic_rules"
  value       = { for k, v in aws_iot_topic_rule.iot_topic_rules : k => v.timestream if v.timestream != null && length(v.timestream) > 0 }
}

