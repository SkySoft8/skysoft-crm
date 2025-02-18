<?php
$listViewDefs ['Accounts'] = 
array (
  'NAME' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_ACCOUNT_NAME',
    'link' => true,
    'default' => true,
  ),
  'WEBSITE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_WEBSITE',
    'default' => true,
  ),
  'ACCOUNT_TYPE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_TYPE',
    'default' => true,
  ),
  'INDUSTRY' => 
  array (
    'width' => '10%',
    'label' => 'LBL_INDUSTRY',
    'default' => true,
  ),
);
$viewdefs ['Accounts'] ['ListView'] = 
array (
  'sidebarWidgets' => 
  array (
    'accounts-new-by-month' => 
    array (
      'type' => 'chart',
      'labelKey' => 'LBL_QUICK_CHARTS',
      'options' => 
      array (
        'toggle' => true,
        'headerTitle' => false,
        'charts' => 
        array (
          0 => 
          array (
            'chartKey' => 'accounts-new-by-month',
            'chartType' => 'line-chart',
            'statisticsType' => 'accounts-new-by-month',
            'labelKey' => 'ACCOUNT_TYPES_PER_MONTH',
            'chartOptions' => 
            array (
            ),
          ),
        ),
      ),
      'acls' => 
      array (
        'Accounts' => 
        array (
          0 => 'view',
          1 => 'list',
        ),
      ),
    ),
  ),
  'bulkActions' => 
  array (
    'actions' => 
    array (
      'records-to-target-list' => 
      array (
        'key' => 'records-to-target-list',
        'labelKey' => 'LBL_ADD_TO_PROSPECT_LIST_BUTTON_LABEL',
        'modes' => 
        array (
          0 => 'list',
        ),
        'acl' => 
        array (
          0 => 'edit',
        ),
        'aclModule' => 'prospect-lists',
        'params' => 
        array (
          'selectModal' => 
          array (
            'module' => 'ProspectLists',
          ),
          'allowAll' => false,
          'max' => 200,
        ),
      ),
      'contacts-to-target-list' => 
      array (
        'key' => 'contacts-to-target-list',
        'labelKey' => 'LBL_ADD_TO_PROSPECT_LIST_BUTTON_LABEL_ACCOUNTS_CONTACTS',
        'modes' => 
        array (
          0 => 'list',
        ),
        'acl' => 
        array (
          0 => 'edit',
        ),
        'aclModule' => 'prospect-lists',
        'params' => 
        array (
          'selectModal' => 
          array (
            'module' => 'ProspectLists',
          ),
          'allowAll' => false,
          'max' => 200,
        ),
      ),
      'print-as-pdf' => 
      array (
        'key' => 'print-as-pdf',
        'labelKey' => 'LBL_PRINT_AS_PDF',
        'modes' => 
        array (
          0 => 'list',
        ),
        'acl' => 
        array (
          0 => 'view',
        ),
        'aclModule' => 'AOS_PDF_Templates',
        'params' => 
        array (
          'selectModal' => 
          array (
            'module' => 'AOS_PDF_Templates',
          ),
          'allowAll' => false,
          'max' => 50,
        ),
      ),
    ),
  ),
);
?>
