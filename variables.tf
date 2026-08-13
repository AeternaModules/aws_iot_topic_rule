variable "iot_topic_rules" {
  description = <<EOT
Map of iot_topic_rules, attributes below
Required:
    - enabled
    - name
    - sql
    - sql_version
Optional:
    - description
    - region
    - tags
    - tags_all
    - cloudwatch_alarm (block):
        - alarm_name (required)
        - role_arn (required)
        - state_reason (required)
        - state_value (required)
    - cloudwatch_logs (block):
        - batch_mode (optional)
        - log_group_name (required)
        - role_arn (required)
    - cloudwatch_metric (block):
        - metric_name (required)
        - metric_namespace (required)
        - metric_timestamp (optional)
        - metric_unit (required)
        - metric_value (required)
        - role_arn (required)
    - dynamodb (block):
        - hash_key_field (required)
        - hash_key_type (optional)
        - hash_key_value (required)
        - operation (optional)
        - payload_field (optional)
        - range_key_field (optional)
        - range_key_type (optional)
        - range_key_value (optional)
        - role_arn (required)
        - table_name (required)
    - dynamodbv2 (block):
        - put_item (optional, block):
            - table_name (required)
        - role_arn (required)
    - elasticsearch (block):
        - endpoint (required)
        - id (required)
        - index (required)
        - role_arn (required)
        - type (required)
    - error_action (block):
        - cloudwatch_alarm (optional, block):
            - alarm_name (required)
            - role_arn (required)
            - state_reason (required)
            - state_value (required)
        - cloudwatch_logs (optional, block):
            - batch_mode (optional)
            - log_group_name (required)
            - role_arn (required)
        - cloudwatch_metric (optional, block):
            - metric_name (required)
            - metric_namespace (required)
            - metric_timestamp (optional)
            - metric_unit (required)
            - metric_value (required)
            - role_arn (required)
        - dynamodb (optional, block):
            - hash_key_field (required)
            - hash_key_type (optional)
            - hash_key_value (required)
            - operation (optional)
            - payload_field (optional)
            - range_key_field (optional)
            - range_key_type (optional)
            - range_key_value (optional)
            - role_arn (required)
            - table_name (required)
        - dynamodbv2 (optional, block):
            - put_item (optional, block):
                - table_name (required)
            - role_arn (required)
        - elasticsearch (optional, block):
            - endpoint (required)
            - id (required)
            - index (required)
            - role_arn (required)
            - type (required)
        - firehose (optional, block):
            - batch_mode (optional)
            - delivery_stream_name (required)
            - role_arn (required)
            - separator (optional)
        - http (optional, block):
            - confirmation_url (optional)
            - http_header (optional, block):
                - key (required)
                - value (required)
            - url (required)
        - iot_analytics (optional, block):
            - batch_mode (optional)
            - channel_name (required)
            - role_arn (required)
        - iot_events (optional, block):
            - batch_mode (optional)
            - input_name (required)
            - message_id (optional)
            - role_arn (required)
        - kafka (optional, block):
            - client_properties (required)
            - destination_arn (required)
            - header (optional, block):
                - key (required)
                - value (required)
            - key (optional)
            - partition (optional)
            - topic (required)
        - kinesis (optional, block):
            - partition_key (optional)
            - role_arn (required)
            - stream_name (required)
        - lambda (optional, block):
            - function_arn (required)
        - republish (optional, block):
            - qos (optional)
            - role_arn (required)
            - topic (required)
        - s3 (optional, block):
            - bucket_name (required)
            - canned_acl (optional)
            - key (required)
            - role_arn (required)
        - sns (optional, block):
            - message_format (optional)
            - role_arn (required)
            - target_arn (required)
        - sqs (optional, block):
            - queue_url (required)
            - role_arn (required)
            - use_base64 (required)
        - step_functions (optional, block):
            - execution_name_prefix (optional)
            - role_arn (required)
            - state_machine_name (required)
        - timestream (optional, block):
            - database_name (required)
            - dimension (required, block):
                - name (required)
                - value (required)
            - role_arn (required)
            - table_name (required)
            - timestamp (optional, block):
                - unit (required)
                - value (required)
    - firehose (block):
        - batch_mode (optional)
        - delivery_stream_name (required)
        - role_arn (required)
        - separator (optional)
    - http (block):
        - confirmation_url (optional)
        - http_header (optional, block):
            - key (required)
            - value (required)
        - url (required)
    - iot_analytics (block):
        - batch_mode (optional)
        - channel_name (required)
        - role_arn (required)
    - iot_events (block):
        - batch_mode (optional)
        - input_name (required)
        - message_id (optional)
        - role_arn (required)
    - kafka (block):
        - client_properties (required)
        - destination_arn (required)
        - header (optional, block):
            - key (required)
            - value (required)
        - key (optional)
        - partition (optional)
        - topic (required)
    - kinesis (block):
        - partition_key (optional)
        - role_arn (required)
        - stream_name (required)
    - lambda (block):
        - function_arn (required)
    - republish (block):
        - qos (optional)
        - role_arn (required)
        - topic (required)
    - s3 (block):
        - bucket_name (required)
        - canned_acl (optional)
        - key (required)
        - role_arn (required)
    - sns (block):
        - message_format (optional)
        - role_arn (required)
        - target_arn (required)
    - sqs (block):
        - queue_url (required)
        - role_arn (required)
        - use_base64 (required)
    - step_functions (block):
        - execution_name_prefix (optional)
        - role_arn (required)
        - state_machine_name (required)
    - timestream (block):
        - database_name (required)
        - dimension (required, block):
            - name (required)
            - value (required)
        - role_arn (required)
        - table_name (required)
        - timestamp (optional, block):
            - unit (required)
            - value (required)
EOT

  type = map(object({
    enabled     = bool
    name        = string
    sql         = string
    sql_version = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    cloudwatch_alarm = optional(list(object({
      alarm_name   = string
      role_arn     = string
      state_reason = string
      state_value  = string
    })))
    sqs = optional(list(object({
      queue_url  = string
      role_arn   = string
      use_base64 = bool
    })))
    sns = optional(list(object({
      message_format = optional(string)
      role_arn       = string
      target_arn     = string
    })))
    s3 = optional(list(object({
      bucket_name = string
      canned_acl  = optional(string)
      key         = string
      role_arn    = string
    })))
    republish = optional(list(object({
      qos      = optional(number)
      role_arn = string
      topic    = string
    })))
    lambda = optional(list(object({
      function_arn = string
    })))
    kinesis = optional(list(object({
      partition_key = optional(string)
      role_arn      = string
      stream_name   = string
    })))
    kafka = optional(list(object({
      client_properties = map(string)
      destination_arn   = string
      header = optional(list(object({
        key   = string
        value = string
      })))
      key       = optional(string)
      partition = optional(string)
      topic     = string
    })))
    iot_events = optional(list(object({
      batch_mode = optional(bool)
      input_name = string
      message_id = optional(string)
      role_arn   = string
    })))
    iot_analytics = optional(list(object({
      batch_mode   = optional(bool)
      channel_name = string
      role_arn     = string
    })))
    http = optional(list(object({
      confirmation_url = optional(string)
      http_header = optional(list(object({
        key   = string
        value = string
      })))
      url = string
    })))
    firehose = optional(list(object({
      batch_mode           = optional(bool)
      delivery_stream_name = string
      role_arn             = string
      separator            = optional(string)
    })))
    error_action = optional(object({
      cloudwatch_alarm = optional(object({
        alarm_name   = string
        role_arn     = string
        state_reason = string
        state_value  = string
      }))
      cloudwatch_logs = optional(object({
        batch_mode     = optional(bool)
        log_group_name = string
        role_arn       = string
      }))
      cloudwatch_metric = optional(object({
        metric_name      = string
        metric_namespace = string
        metric_timestamp = optional(string)
        metric_unit      = string
        metric_value     = string
        role_arn         = string
      }))
      dynamodb = optional(object({
        hash_key_field  = string
        hash_key_type   = optional(string)
        hash_key_value  = string
        operation       = optional(string)
        payload_field   = optional(string)
        range_key_field = optional(string)
        range_key_type  = optional(string)
        range_key_value = optional(string)
        role_arn        = string
        table_name      = string
      }))
      dynamodbv2 = optional(object({
        put_item = optional(object({
          table_name = string
        }))
        role_arn = string
      }))
      elasticsearch = optional(object({
        endpoint = string
        id       = string
        index    = string
        role_arn = string
        type     = string
      }))
      firehose = optional(object({
        batch_mode           = optional(bool)
        delivery_stream_name = string
        role_arn             = string
        separator            = optional(string)
      }))
      http = optional(object({
        confirmation_url = optional(string)
        http_header = optional(list(object({
          key   = string
          value = string
        })))
        url = string
      }))
      iot_analytics = optional(object({
        batch_mode   = optional(bool)
        channel_name = string
        role_arn     = string
      }))
      iot_events = optional(object({
        batch_mode = optional(bool)
        input_name = string
        message_id = optional(string)
        role_arn   = string
      }))
      kafka = optional(object({
        client_properties = map(string)
        destination_arn   = string
        header = optional(list(object({
          key   = string
          value = string
        })))
        key       = optional(string)
        partition = optional(string)
        topic     = string
      }))
      kinesis = optional(object({
        partition_key = optional(string)
        role_arn      = string
        stream_name   = string
      }))
      lambda = optional(object({
        function_arn = string
      }))
      republish = optional(object({
        qos      = optional(number)
        role_arn = string
        topic    = string
      }))
      s3 = optional(object({
        bucket_name = string
        canned_acl  = optional(string)
        key         = string
        role_arn    = string
      }))
      sns = optional(object({
        message_format = optional(string)
        role_arn       = string
        target_arn     = string
      }))
      sqs = optional(object({
        queue_url  = string
        role_arn   = string
        use_base64 = bool
      }))
      step_functions = optional(object({
        execution_name_prefix = optional(string)
        role_arn              = string
        state_machine_name    = string
      }))
      timestream = optional(object({
        database_name = string
        dimension = list(object({
          name  = string
          value = string
        }))
        role_arn   = string
        table_name = string
        timestamp = optional(object({
          unit  = string
          value = string
        }))
      }))
    }))
    elasticsearch = optional(list(object({
      endpoint = string
      id       = string
      index    = string
      role_arn = string
      type     = string
    })))
    dynamodbv2 = optional(list(object({
      put_item = optional(object({
        table_name = string
      }))
      role_arn = string
    })))
    dynamodb = optional(list(object({
      hash_key_field  = string
      hash_key_type   = optional(string)
      hash_key_value  = string
      operation       = optional(string)
      payload_field   = optional(string)
      range_key_field = optional(string)
      range_key_type  = optional(string)
      range_key_value = optional(string)
      role_arn        = string
      table_name      = string
    })))
    cloudwatch_metric = optional(list(object({
      metric_name      = string
      metric_namespace = string
      metric_timestamp = optional(string)
      metric_unit      = string
      metric_value     = string
      role_arn         = string
    })))
    cloudwatch_logs = optional(list(object({
      batch_mode     = optional(bool)
      log_group_name = string
      role_arn       = string
    })))
    step_functions = optional(list(object({
      execution_name_prefix = optional(string)
      role_arn              = string
      state_machine_name    = string
    })))
    timestream = optional(list(object({
      database_name = string
      dimension = list(object({
        name  = string
        value = string
      }))
      role_arn   = string
      table_name = string
      timestamp = optional(object({
        unit  = string
        value = string
      }))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_topic_rules : (
        v.error_action == null || (v.error_action.timestream == null || (length(v.error_action.timestream.dimension) >= 1))
      )
    ])
    error_message = "Each dimension list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_topic_rules : (
        v.timestream == null || alltrue([for item in v.timestream : (length(item.dimension) >= 1)])
      )
    ])
    error_message = "Each dimension list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_topic_rules : (
        v.dynamodb == null || alltrue([for item in v.dynamodb : (item.operation == null || (contains(["DELETE", "INSERT", "UPDATE"], item.operation)))])
      )
    ])
    error_message = "must be one of: DELETE, INSERT, UPDATE"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_topic_rules : (
        v.error_action == null || (v.error_action.dynamodb == null || (v.error_action.dynamodb.operation == null || (contains(["DELETE", "INSERT", "UPDATE"], v.error_action.dynamodb.operation))))
      )
    ])
    error_message = "must be one of: DELETE, INSERT, UPDATE"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_topic_rules : (
        v.error_action == null || (v.error_action.republish == null || (v.error_action.republish.qos == null || (v.error_action.republish.qos >= 0 && v.error_action.republish.qos <= 1)))
      )
    ])
    error_message = "must be between 0 and 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_topic_rules : (
        v.republish == null || alltrue([for item in v.republish : (item.qos == null || (item.qos >= 0 && item.qos <= 1))])
      )
    ])
    error_message = "must be between 0 and 1"
  }
  # Note: 55 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

