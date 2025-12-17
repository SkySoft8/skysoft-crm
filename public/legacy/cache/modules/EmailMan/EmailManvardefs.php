<?php 
 $GLOBALS["dictionary"]["EmailMan"]=array (
  'table' => 'emailman',
  'comment' => 'Email campaign queue',
  'fields' => 
  array (
    'date_entered' => 
    array (
      'name' => 'date_entered',
      'vname' => 'LBL_DATE_ENTERED',
      'type' => 'datetime',
      'comment' => 'Date record created',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
    ),
    'date_modified' => 
    array (
      'name' => 'date_modified',
      'vname' => 'LBL_DATE_MODIFIED',
      'type' => 'datetime',
      'comment' => 'Date record last modified',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
    ),
    'user_id' => 
    array (
      'name' => 'user_id',
      'vname' => 'LBL_USER_ID',
      'type' => 'id',
      'len' => '36',
      'reportable' => false,
      'comment' => 'User ID representing assigned-to user',
    ),
    'id' => 
    array (
      'name' => 'id',
      'vname' => 'LBL_ID',
      'type' => 'int',
      'len' => '11',
      'auto_increment' => true,
      'comment' => 'Unique identifier',
    ),
    'list_id' => 
    array (
      'name' => 'list_id',
      'vname' => 'LBL_LIST_ID',
      'type' => 'id',
      'reportable' => false,
      'len' => '36',
      'comment' => 'Associated list',
    ),
    'send_date_time' => 
    array (
      'name' => 'send_date_time',
      'vname' => 'LBL_SEND_DATE_TIME',
      'type' => 'datetime',
    ),
    'modified_user_id' => 
    array (
      'name' => 'modified_user_id',
      'vname' => 'LBL_MODIFIED_USER_ID',
      'type' => 'id',
      'reportable' => false,
      'len' => '36',
      'comment' => 'User ID who last modified record',
    ),
    'more_information' => 
    array (
      'name' => 'more_information',
      'vname' => 'LBL_MORE_INFO',
      'type' => 'varchar',
      'len' => '100',
    ),
    'in_queue' => 
    array (
      'name' => 'in_queue',
      'vname' => 'LBL_IN_QUEUE',
      'type' => 'bool',
      'default' => '0',
      'displayType' => 'checkbox',
      'comment' => 'Flag indicating if item still in queue',
    ),
    'in_queue_date' => 
    array (
      'name' => 'in_queue_date',
      'vname' => 'LBL_IN_QUEUE_DATE',
      'type' => 'datetime',
      'comment' => 'Datetime in which item entered queue',
    ),
    'send_attempts' => 
    array (
      'name' => 'send_attempts',
      'vname' => 'LBL_SEND_ATTEMPTS',
      'type' => 'int',
      'default' => '0',
      'comment' => 'Number of attempts made to send this item',
    ),
    'deleted' => 
    array (
      'name' => 'deleted',
      'vname' => 'LBL_DELETED',
      'type' => 'bool',
      'reportable' => false,
      'comment' => 'Record deletion indicator',
      'default' => '0',
    ),
    'related_type' => 
    array (
      'name' => 'related_type',
      'vname' => 'LBL_RELATED_TYPE',
      'type' => 'varchar',
      'len' => '100',
    ),
    'related_id' => 
    array (
      'name' => 'related_id',
      'vname' => 'LBL_RELATED_ID',
      'type' => 'id',
      'reportable' => false,
    ),
    'related_confirm_opt_in' => 
    array (
      'name' => 'related_confirm_opt_in',
      'vname' => 'LBL_RELATED_CONFIRM_OPT_IN',
      'type' => 'bool',
      'default' => 0,
      'reportable' => false,
      'comment' => '',
    ),
    'recipient_name' => 
    array (
      'name' => 'recipient_name',
      'type' => 'varchar',
      'len' => '255',
      'source' => 'non-db',
    ),
    'recipient_email' => 
    array (
      'name' => 'recipient_email',
      'type' => 'varchar',
      'len' => '255',
      'source' => 'non-db',
    ),
    'message_name' => 
    array (
      'name' => 'message_name',
      'id_name' => 'marketing_id',
      'group' => 'message_name',
      'len' => '255',
      'source' => 'non-db',
      'rname' => 'name',
      'type' => 'relate',
      'module' => 'EmailMarketing',
      'link' => 'email_marketing',
      'table' => 'email_marketing',
    ),
    'marketing_id' => 
    array (
      'name' => 'marketing_id',
      'vname' => 'LBL_MARKETING_ID',
      'group' => 'message_name',
      'type' => 'id',
      'reportable' => false,
      'comment' => '',
    ),
    'campaign_name' => 
    array (
      'name' => 'campaign_name',
      'rname' => 'name',
      'source' => 'non-db',
      'id_name' => 'campaign_id',
      'vname' => 'LBL_LIST_CAMPAIGN',
      'group' => 'campaign_name',
      'type' => 'relate',
      'len' => '50',
      'module' => 'Campaigns',
      'link' => 'campaigns',
      'table' => 'campaigns',
    ),
    'campaign_id' => 
    array (
      'name' => 'campaign_id',
      'vname' => 'LBL_CAMPAIGN_ID',
      'group' => 'campaign_name',
      'type' => 'id',
      'reportable' => false,
      'comment' => 'ID of related campaign',
    ),
    'name' => 
    array (
      'name' => 'name',
      'vname' => 'LBL_SUBJECT',
      'type' => 'varchar',
      'metadata' => 
      array (
        'linkRoute' => '../../../email-marketing/record/{{attributes.marketing_id}}',
      ),
      'source' => 'non-db',
      'len' => '255',
    ),
    'status' => 
    array (
      'name' => 'status',
      'type' => 'enum',
      'source' => 'non-db',
      'len' => 100,
      'options' => 'email_marketing_status_dom',
    ),
    'assigned_user_id' => 
    array (
      'name' => 'assigned_user_id',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'vname' => 'LBL_ASSIGNED_TO_ID',
      'group' => 'assigned_user_name',
      'type' => 'relate',
      'table' => 'users',
      'module' => 'Users',
      'source' => 'non-db',
      'isnull' => 'false',
      'dbType' => 'id',
      'comment' => 'User ID assigned to record',
      'duplicate_merge' => 'disabled',
      'reportable' => false,
      'massupdate' => false,
      'inline_edit' => false,
      'importable' => false,
      'exportable' => false,
      'unified_search' => false,
    ),
    'assigned_user_name' => 
    array (
      'name' => 'assigned_user_name',
      'link' => 'assigned_user_link',
      'vname' => 'LBL_ASSIGNED_TO_NAME',
      'rname' => 'user_name',
      'type' => 'relate',
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'assigned_user_id',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
      'reportable' => false,
      'massupdate' => false,
      'inline_edit' => false,
      'importable' => false,
      'exportable' => false,
      'unified_search' => false,
    ),
    'assigned_user_link' => 
    array (
      'name' => 'assigned_user_link',
      'type' => 'link',
      'relationship' => 'emailman_assigned_user',
      'vname' => 'LBL_ASSIGNED_TO_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
      'duplicate_merge' => 'enabled',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'table' => 'users',
      'reportable' => false,
      'massupdate' => false,
      'inline_edit' => false,
      'importable' => false,
      'exportable' => false,
      'unified_search' => false,
    ),
  ),
  'relationships' => 
  array (
    'emailman_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'Emailman',
      'rhs_table' => 'emailman',
      'rhs_key' => 'assigned_user_id',
      'relationship_type' => 'one-to-many',
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'emailmanpk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'idx_eman_list',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'list_id',
        1 => 'user_id',
        2 => 'deleted',
      ),
    ),
    2 => 
    array (
      'name' => 'idx_eman_campaign_id',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'campaign_id',
      ),
    ),
    3 => 
    array (
      'name' => 'idx_eman_relid_reltype_id',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'related_id',
        1 => 'related_type',
        2 => 'campaign_id',
      ),
    ),
    4 => 
    array (
      'name' => 'idx_eman_related',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'related_id',
        1 => 'related_type',
        2 => 'marketing_id',
        3 => 'deleted',
      ),
    ),
  ),
  'custom_fields' => false,
);