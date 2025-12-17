<?php 
 $GLOBALS["dictionary"]["EmailMarketing"]=array (
  'table' => 'email_marketing',
  'fields' => 
  array (
    'SecurityGroups' => 
    array (
      'name' => 'SecurityGroups',
      'type' => 'link',
      'relationship' => 'securitygroups_emailmarketing',
      'module' => 'SecurityGroups',
      'bean_name' => 'SecurityGroup',
      'source' => 'non-db',
      'vname' => 'LBL_SECURITYGROUPS',
    ),
    'id' => 
    array (
      'name' => 'id',
      'vname' => 'LBL_NAME',
      'type' => 'id',
      'required' => true,
    ),
    'deleted' => 
    array (
      'name' => 'deleted',
      'vname' => 'LBL_CREATED_BY',
      'type' => 'bool',
      'required' => false,
      'reportable' => false,
    ),
    'date_entered' => 
    array (
      'name' => 'date_entered',
      'vname' => 'LBL_DATE_ENTERED',
      'type' => 'datetime',
      'required' => true,
    ),
    'date_modified' => 
    array (
      'name' => 'date_modified',
      'vname' => 'LBL_DATE_MODIFIED',
      'type' => 'datetime',
      'required' => true,
    ),
    'modified_user_id' => 
    array (
      'name' => 'modified_user_id',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_MODIFIED_BY',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'dbType' => 'id',
    ),
    'created_by' => 
    array (
      'name' => 'created_by',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_CREATED_BY',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'dbType' => 'id',
    ),
    'name' => 
    array (
      'name' => 'name',
      'vname' => 'LBL_NAME',
      'type' => 'varchar',
      'len' => '255',
      'importable' => 'required',
      'required' => true,
    ),
    'from_name' => 
    array (
      'name' => 'from_name',
      'vname' => 'LBL_FROM_NAME',
      'type' => 'varchar',
      'len' => '100',
      'importable' => 'required',
      'required' => true,
    ),
    'from_addr' => 
    array (
      'name' => 'from_addr',
      'vname' => 'LBL_FROM_ADDR',
      'type' => 'varchar',
      'len' => '100',
      'importable' => 'required',
      'required' => true,
    ),
    'reply_to_name' => 
    array (
      'name' => 'reply_to_name',
      'vname' => 'LBL_REPLY_NAME',
      'type' => 'varchar',
      'len' => '100',
    ),
    'reply_to_addr' => 
    array (
      'name' => 'reply_to_addr',
      'vname' => 'LBL_REPLY_ADDR',
      'type' => 'varchar',
      'len' => '100',
    ),
    'date_start' => 
    array (
      'name' => 'date_start',
      'vname' => 'LBL_SCHEDULED_START_DATE',
      'type' => 'datetime',
      'importable' => 'required',
      'required' => true,
      'footnotes' => 
      array (
        0 => 
        array (
          'labelKey' => 'LBL_SCHEDULED_START_DATE_HELP',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
            2 => 'detail',
          ),
        ),
      ),
    ),
    'template_id' => 
    array (
      'name' => 'template_id',
      'vname' => 'LBL_TEMPLATE',
      'type' => 'id',
      'required' => true,
      'importable' => 'required',
    ),
    'status' => 
    array (
      'name' => 'status',
      'vname' => 'LBL_STATUS',
      'type' => 'enum',
      'default' => 'draft',
      'len' => 100,
      'readonly' => 'true',
      'options' => 'email_marketing_status_dom',
      'importable' => 'required',
      'footnotes' => 
      array (
        0 => 
        array (
          'labelKey' => 'LBL_STATUS_DRAFT_NOT_SEND_HELP',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
            2 => 'detail',
          ),
          'klass' => 'alert alert-warning pl-2 pb-2 pt-2 mb-1',
          'icon' => 'exclamation-triangle',
          'iconKlass' => 'mr-1 align-text-top svg-size-3',
          'activeOn' => 
          array (
            0 => 
            array (
              'operator' => 'is-equal',
              'values' => 
              array (
                0 => 'draft',
              ),
            ),
          ),
        ),
      ),
    ),
    'duplicate' => 
    array (
      'name' => 'duplicate',
      'vname' => 'LBL_CHECK_DUPLICATE',
      'type' => 'enum',
      'default' => 'email',
      'options' => 'email_marketing_duplicate_dom',
    ),
    'queueing_status' => 
    array (
      'name' => 'queueing_status',
      'vname' => 'LBL_QUEUEING_STATUS',
      'type' => 'enum',
      'default' => 'not_started',
      'len' => 100,
      'readonly' => 'true',
      'options' => 'email_marketing_queueing_status_dom',
      'importable' => 'required',
    ),
    'type' => 
    array (
      'name' => 'type',
      'vname' => 'LBL_MARKETING_TYPE',
      'type' => 'enum',
      'len' => 100,
      'readonly' => 'true',
      'options' => 'email_marketing_type_dom',
      'importable' => 'required',
      'footnotes' => 
      array (
        0 => 
        array (
          'labelKey' => 'LBL_TYPE_LEGACY_HELP',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
            2 => 'detail',
          ),
          'icon' => 'info_circled',
          'iconKlass' => 'mr-1 align-text-bottom svg-size-3 stroke-info fill-info',
          'activeOn' => 
          array (
            0 => 
            array (
              'operator' => 'is-equal',
              'values' => 
              array (
                0 => 'legacy',
              ),
            ),
          ),
        ),
        1 => 
        array (
          'labelKey' => 'LBL_TYPE_MARKETING_HELP',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
            2 => 'detail',
          ),
          'icon' => 'info_circled',
          'iconKlass' => 'mr-1 align-text-bottom svg-size-3 stroke-info fill-info',
          'activeOn' => 
          array (
            0 => 
            array (
              'operator' => 'not-equal',
              'values' => 
              array (
                0 => 'transactional',
                1 => 'legacy',
              ),
            ),
          ),
        ),
        2 => 
        array (
          'labelKey' => 'LBL_TYPE_TRANSACTIONAL_HELP',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
          ),
          'klass' => 'alert alert-warning pl-2 pb-2 pt-2 mb-1',
          'icon' => 'exclamation-triangle',
          'iconKlass' => 'mr-1 align-text-top svg-size-3',
          'activeOn' => 
          array (
            0 => 
            array (
              'operator' => 'is-equal',
              'values' => 
              array (
                0 => 'transactional',
              ),
            ),
          ),
        ),
        3 => 
        array (
          'labelKey' => 'LBL_TYPE_TRANSACTIONAL_HELP',
          'displayModes' => 
          array (
            0 => 'detail',
          ),
          'icon' => 'exclamation-triangle',
          'iconKlass' => 'mr-1 align-text-top svg-size-3',
          'activeOn' => 
          array (
            0 => 
            array (
              'operator' => 'is-equal',
              'values' => 
              array (
                0 => 'transactional',
              ),
            ),
          ),
        ),
      ),
    ),
    'has_test_data' => 
    array (
      'name' => 'has_test_data',
      'vname' => 'LBL_HAS_TEST_DATA',
      'type' => 'bool',
      'default' => '0',
      'required' => false,
      'reportable' => false,
    ),
    'trackers_enabled' => 
    array (
      'name' => 'trackers_enabled',
      'vname' => 'LBL_TRACKER_LINKS_ENABLED',
      'type' => 'bool',
      'displayType' => 'dropdown',
      'options' => 'dom_int_bool_string',
      'defaultValueModes' => 
      array (
        0 => 'create',
        1 => 'edit',
        2 => 'detail',
      ),
      'initDefaultProcess' => 'email-marketing-trackers-enabled-default',
      'required' => false,
      'reportable' => false,
      'metadata' => 
      array (
        'boolInternalType' => 'int',
      ),
      'footnotes' => 
      array (
        0 => 
        array (
          'labelKey' => 'LBL_TRACKERS_ENABLED_FOOTNOTE',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
            2 => 'detail',
          ),
          'activeOn' => 
          array (
            0 => 
            array (
              'operator' => 'is-equal',
              'values' => 
              array (
                0 => '1',
                1 => 'true',
                2 => true,
                3 => 1,
              ),
            ),
          ),
        ),
        1 => 
        array (
          'labelKey' => 'LBL_TRACKERS_DISABLED_FOOTNOTE',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
            2 => 'detail',
          ),
          'activeOn' => 
          array (
            0 => 
            array (
              'operator' => 'is-equal',
              'values' => 
              array (
                0 => '0',
                1 => 'false',
                2 => false,
                3 => 0,
              ),
            ),
          ),
        ),
      ),
    ),
    'email_marketing_config' => 
    array (
      'name' => 'email_marketing_config',
      'vname' => 'LBL_CONFIGS',
      'type' => 'varchar',
      'inline_edit' => false,
      'source' => 'non-db',
      'groupFields' => 
      array (
        0 => 'name',
        1 => 'outbound_email_name',
        2 => 'date_start',
        3 => 'status',
        4 => 'queueing_status',
        5 => 'type',
        6 => 'prospect_list_name',
        7 => 'trackers_enabled',
        8 => 'duplicate',
        9 => 'survey_name',
        10 => 'campaign_name',
      ),
      'layout' => 
      array (
        0 => 'name',
        1 => 'status',
        2 => 'queueing_status',
        3 => 'outbound_email_name',
        4 => 'prospect_list_name',
        5 => 'date_start',
        6 => 'type',
        7 => 'trackers_enabled',
        8 => 'duplicate',
        9 => 'survey_name',
        10 => 'campaign_name',
      ),
      'display' => 'vertical',
      'showLabel' => 
      array (
        'edit' => 
        array (
          0 => '*',
        ),
        'filter' => 
        array (
          0 => '*',
        ),
        'detail' => 
        array (
          0 => '*',
        ),
      ),
    ),
    'email_marketing_template' => 
    array (
      'name' => 'email_marketing_template',
      'vname' => 'LBL_EMAIL',
      'type' => 'varchar',
      'inline_edit' => false,
      'source' => 'non-db',
      'groupFields' => 
      array (
        0 => 'subject',
        1 => 'body',
      ),
      'layout' => 
      array (
        0 => 'subject',
        1 => 'body',
      ),
      'display' => 'vertical',
      'showLabel' => 
      array (
        'edit' => 
        array (
          0 => '*',
        ),
        'filter' => 
        array (
          0 => '*',
        ),
        'detail' => 
        array (
          0 => '*',
        ),
      ),
    ),
    'campaign_id' => 
    array (
      'name' => 'campaign_id',
      'vname' => 'LBL_CAMPAIGN_ID',
      'type' => 'id',
      'isnull' => true,
      'required' => false,
    ),
    'campaign_name' => 
    array (
      'name' => 'campaign_name',
      'rname' => 'name',
      'id_name' => 'campaign_id',
      'vname' => 'LBL_RELATED_CAMPAIGN',
      'type' => 'relate',
      'filterOnEmpty' => true,
      'link' => 'campaign_email_marketing',
      'table' => 'campaigns',
      'isnull' => 'true',
      'readonly' => 'true',
      'module' => 'Campaigns',
      'dbType' => 'varchar',
      'len' => '255',
      'source' => 'non-db',
      'reportable' => false,
      'required' => true,
      'massupdate' => false,
      'inline_edit' => false,
      'importable' => false,
      'exportable' => false,
      'unified_search' => false,
    ),
    'outbound_email_id' => 
    array (
      'name' => 'outbound_email_id',
      'vname' => 'LBL_OUTBOUND_EMAIL_ACOUNT_ID',
      'type' => 'id',
      'isnull' => true,
      'required' => false,
    ),
    'outbound_email_name' => 
    array (
      'name' => 'outbound_email_name',
      'rname' => 'from_addr',
      'defaultValueModes' => 
      array (
        0 => 'create',
      ),
      'initDefaultProcess' => 'outbound-email-default',
      'showFilter' => false,
      'filter' => 
      array (
        'preset' => 
        array (
          'type' => 'outbound-email',
          'params' => 
          array (
            'module' => 'OutboundEmailAccounts',
          ),
        ),
      ),
      'id_name' => 'outbound_email_id',
      'vname' => 'LBL_FROM',
      'join_name' => 'outbound_email',
      'type' => 'relate',
      'filterOnEmpty' => true,
      'link' => 'outbound_email',
      'table' => 'outbound_email',
      'isnull' => 'true',
      'module' => 'OutboundEmailAccounts',
      'dbType' => 'varchar',
      'len' => '255',
      'source' => 'non-db',
      'reportable' => false,
      'required' => true,
      'massupdate' => false,
      'inline_edit' => false,
      'importable' => false,
      'exportable' => false,
      'unified_search' => false,
    ),
    'log_entries' => 
    array (
      'name' => 'log_entries',
      'type' => 'link',
      'relationship' => 'email_marketing_campaignlog',
      'source' => 'non-db',
      'vname' => 'LBL_LOG_ENTRIES',
    ),
    'queueitems' => 
    array (
      'name' => 'queueitems',
      'vname' => 'LBL_QUEUE_ITEMS',
      'type' => 'link',
      'relationship' => 'email_marketing_emailman',
      'source' => 'non-db',
    ),
    'all_prospect_lists' => 
    array (
      'name' => 'all_prospect_lists',
      'vname' => 'LBL_ALL_PROSPECT_LISTS',
      'type' => 'bool',
      'default' => 0,
    ),
    'subject' => 
    array (
      'name' => 'subject',
      'vname' => 'LBL_SUBJECT',
      'type' => 'varchar',
      'len' => '255',
    ),
    'body' => 
    array (
      'name' => 'body',
      'type' => 'html',
      'displayType' => 'squire',
      'dbType' => 'longtext',
      'vname' => 'LBL_BODY',
      'inline_edit' => false,
      'rows' => 10,
      'asyncValidators' => 
      array (
        'unsubscribe-link-validation' => 
        array (
          'key' => 'unsubscribe-link-validation',
        ),
      ),
      'cols' => 250,
      'metadata' => 
      array (
        'trustHTML' => true,
        'purifyHtml' => false,
        'errorPosition' => 'top',
        'squire' => 
        array (
          'edit' => 
          array (
            'dynamicHeight' => true,
            'dynamicHeightAncestor' => '.field-layout',
            'dynamicHeightAdjustment' => -140,
            'buttonLayout' => 
            array (
              0 => 
              array (
                0 => 'bold',
                1 => 'italic',
                2 => 'underline',
                3 => 'strikethrough',
              ),
              1 => 
              array (
                0 => 'font',
                1 => 'size',
              ),
              2 => 
              array (
                0 => 'textColour',
                1 => 'highlight',
              ),
              3 => 
              array (
                0 => 'insertLink',
              ),
              4 => 
              array (
                0 => 'unorderedList',
                1 => 'orderedList',
                2 => 'indentMore',
                3 => 'indentLess',
              ),
              5 => 
              array (
                0 => 'alignLeft',
                1 => 'alignCenter',
                2 => 'alignRight',
                3 => 'justify',
              ),
              6 => 
              array (
                0 => 'quote',
                1 => 'unquote',
              ),
              7 => 
              array (
                0 => 'clearFormatting',
              ),
              8 => 
              array (
                0 => 'injectUnsubscribe',
              ),
              9 => 
              array (
                0 => 'html',
              ),
            ),
          ),
          'detail' => 
          array (
            'dynamicHeight' => true,
            'dynamicHeightAncestor' => '.field-layout',
            'dynamicHeightAdjustment' => -140,
            'buttonLayout' => 
            array (
              0 => 
              array (
                0 => 'bold',
                1 => 'italic',
                2 => 'underline',
                3 => 'strikethrough',
              ),
              1 => 
              array (
                0 => 'font',
                1 => 'size',
              ),
              2 => 
              array (
                0 => 'textColour',
                1 => 'highlight',
              ),
              3 => 
              array (
                0 => 'insertLink',
              ),
              4 => 
              array (
                0 => 'unorderedList',
                1 => 'orderedList',
                2 => 'indentMore',
                3 => 'indentLess',
              ),
              5 => 
              array (
                0 => 'alignLeft',
                1 => 'alignCenter',
                2 => 'alignRight',
                3 => 'justify',
              ),
              6 => 
              array (
                0 => 'quote',
                1 => 'unquote',
              ),
              7 => 
              array (
                0 => 'clearFormatting',
              ),
              8 => 
              array (
                0 => 'injectUnsubscribe',
              ),
              9 => 
              array (
                0 => 'html',
              ),
            ),
          ),
        ),
      ),
    ),
    'template_name' => 
    array (
      'name' => 'template_name',
      'rname' => 'name',
      'id_name' => 'template_id',
      'vname' => 'LBL_TEMPLATE_SELECTED',
      'type' => 'relate',
      'table' => 'email_templates',
      'isnull' => 'true',
      'module' => 'EmailTemplates',
      'dbType' => 'varchar',
      'link' => 'emailtemplate',
      'filterOnEmpty' => true,
      'len' => '255',
      'source' => 'non-db',
      'metadata' => 
      array (
        'selectConfirmation' => true,
        'confirmationMessages' => 
        array (
          0 => 'LBL_TEMPLATE_CONFIRMATION',
        ),
      ),
    ),
    'prospect_list_name' => 
    array (
      'required' => true,
      'metadata' => 
      array (
        'headerField' => 
        array (
          'name' => 'name',
        ),
        'subHeaderField' => 
        array (
          'name' => 'list_type',
          'type' => 'enum',
          'definition' => 
          array (
            'options' => 'prospect_list_type_dom',
          ),
        ),
      ),
      'name' => 'prospect_list_name',
      'vname' => 'LBL_TARGET_LISTS',
      'footnotes' => 
      array (
        0 => 
        array (
          'labelKey' => 'LBL_TARGET_LISTS_HELP',
          'displayModes' => 
          array (
            0 => 'edit',
            1 => 'create',
          ),
        ),
      ),
      'type' => 'multirelate',
      'link' => 'prospectlists',
      'source' => 'non-db',
      'module' => 'ProspectLists',
      'filterOnEmpty' => true,
      'rname' => 'name',
      'showFilter' => false,
      'filter' => 
      array (
        'attributes' => 
        array (
          'id' => 'campaign_id',
        ),
        'preset' => 
        array (
          'type' => 'prospectlists',
          'params' => 
          array (
            'parent_field' => 'propects_lists',
            'parent_module' => 'Campaigns',
          ),
        ),
        'static' => 
        array (
          'list_type' => 
          array (
            0 => 'seed',
            1 => 'default',
          ),
        ),
      ),
    ),
    'prospectlists' => 
    array (
      'name' => 'prospectlists',
      'vname' => 'LBL_PROSPECT_LISTS',
      'type' => 'link',
      'relationship' => 'email_marketing_prospect_lists',
      'source' => 'non-db',
    ),
    'survey' => 
    array (
      'name' => 'survey',
      'type' => 'link',
      'relationship' => 'email_marketing_survey',
      'source' => 'non-db',
      'module' => 'Surveys',
      'bean_name' => 'Surveys',
      'id_name' => 'survey_id',
      'link_type' => 'one',
      'side' => 'left',
    ),
    'survey_name' => 
    array (
      'name' => 'survey_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_SURVEY',
      'save' => true,
      'id_name' => 'survey_id',
      'link' => 'survey',
      'table' => 'surveys',
      'filterOnEmpty' => true,
      'module' => 'Surveys',
      'rname' => 'name',
      'logic' => 
      array (
        'required' => 
        array (
          'key' => 'required',
          'modes' => 
          array (
            0 => 'edit',
            1 => 'create',
          ),
          'params' => 
          array (
            'fieldDependencies' => 
            array (
              0 => 'type',
            ),
            'activeOnFields' => 
            array (
              'type' => 
              array (
                0 => 'survey',
              ),
            ),
          ),
        ),
      ),
      'displayLogic' => 
      array (
        'show_for_survey_emails' => 
        array (
          'key' => 'displayType',
          'modes' => 
          array (
            0 => 'detail',
            1 => 'edit',
            2 => 'create',
          ),
          'params' => 
          array (
            'fieldDependencies' => 
            array (
              0 => 'type',
            ),
            'activeOnFields' => 
            array (
              'type' => 
              array (
                0 => 
                array (
                  'operator' => 'not-equal',
                  'values' => 
                  array (
                    0 => 'survey',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    'survey_id' => 
    array (
      'name' => 'survey_id',
      'type' => 'id',
      'reportable' => false,
    ),
    'outbound_email' => 
    array (
      'name' => 'outbound_email',
      'type' => 'link',
      'relationship' => 'email_marketing_outbound_email_accounts',
      'link_type' => 'one',
      'source' => 'non-db',
      'vname' => 'LBL_OUTBOUND_EMAIL_ACCOUNT',
      'duplicate_merge' => 'disabled',
      'reportable' => false,
      'massupdate' => false,
      'inline_edit' => false,
      'importable' => false,
      'exportable' => false,
      'unified_search' => false,
    ),
    'emailtemplate' => 
    array (
      'name' => 'emailtemplate',
      'vname' => 'LBL_EMAIL_TEMPLATE',
      'type' => 'link',
      'relationship' => 'email_template_email_marketings',
      'source' => 'non-db',
    ),
    'surveylink' => 
    array (
      'name' => 'surveylink',
      'type' => 'link',
      'relationship' => 'email_marketing_survey',
      'source' => 'non-db',
      'bean_name' => 'Surveys',
      'id_name' => 'survey_id',
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'emmkpk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'idx_emmkt_name',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'name',
      ),
    ),
    2 => 
    array (
      'name' => 'idx_emmkit_del',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'deleted',
      ),
    ),
    3 => 
    array (
      'name' => 'idx_status',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'status',
      ),
    ),
    4 => 
    array (
      'name' => 'idx_date_start',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'date_start',
      ),
    ),
    5 => 
    array (
      'name' => 'idx_survey_id',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'survey_id',
      ),
    ),
  ),
  'relationships' => 
  array (
    'securitygroups_emailmarketing' => 
    array (
      'lhs_module' => 'SecurityGroups',
      'lhs_table' => 'securitygroups',
      'lhs_key' => 'id',
      'rhs_module' => 'EmailMarketing',
      'rhs_table' => 'email_marketing',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'securitygroups_records',
      'join_key_lhs' => 'securitygroup_id',
      'join_key_rhs' => 'record_id',
      'relationship_role_column' => 'module',
      'relationship_role_column_value' => 'EmailMarketing',
    ),
    'email_template_email_marketings' => 
    array (
      'lhs_module' => 'EmailTemplates',
      'lhs_table' => 'email_templates',
      'lhs_key' => 'id',
      'rhs_module' => 'EmailMarketing',
      'rhs_table' => 'email_marketing',
      'rhs_key' => 'template_id',
      'relationship_type' => 'one-to-many',
    ),
    'email_marketing_survey' => 
    array (
      'lhs_module' => 'Surveys',
      'lhs_table' => 'surveys',
      'lhs_key' => 'id',
      'rhs_module' => 'EmailMarketing',
      'rhs_table' => 'email_marketing',
      'rhs_key' => 'survey_id',
      'relationship_type' => 'one-to-many',
    ),
    'email_marketing_outbound_email_accounts' => 
    array (
      'lhs_module' => 'OutboundEmailAccounts',
      'lhs_table' => 'outbound_email',
      'lhs_key' => 'id',
      'rhs_module' => 'EmailMarketing',
      'rhs_table' => 'email_marketing',
      'rhs_key' => 'outbound_email_id',
      'relationship_type' => 'one-to-many',
    ),
    'email_marketing_campaignlog' => 
    array (
      'lhs_module' => 'EmailMarketing',
      'lhs_table' => 'email_marketing',
      'lhs_key' => 'id',
      'rhs_module' => 'CampaignLog',
      'rhs_table' => 'campaign_log',
      'rhs_key' => 'marketing_id',
      'relationship_type' => 'one-to-many',
    ),
    'email_marketing_emailman' => 
    array (
      'lhs_module' => 'EmailMarketing',
      'lhs_table' => 'email_marketing',
      'lhs_key' => 'id',
      'rhs_module' => 'EmailMan',
      'rhs_table' => 'emailman',
      'rhs_key' => 'marketing_id',
      'relationship_type' => 'one-to-many',
    ),
  ),
  'templates' => 
  array (
    'security_groups' => 'security_groups',
  ),
  'custom_fields' => false,
);