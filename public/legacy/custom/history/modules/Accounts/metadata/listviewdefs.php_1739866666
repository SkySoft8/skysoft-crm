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
  'BILLING_ADDRESS_CITY' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_CITY',
    'default' => true,
  ),
  'BILLING_ADDRESS_COUNTRY' => 
  array (
    'width' => '10%',
    'label' => 'LBL_BILLING_ADDRESS_COUNTRY',
    'default' => true,
  ),
  'PHONE_OFFICE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_PHONE',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_ASSIGNED_USER',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'EMAIL1' => 
  array (
    'width' => '15%',
    'label' => 'LBL_EMAIL_ADDRESS',
    'sortable' => false,
    'link' => true,
    'customCode' => '{$EMAIL1_LINK}',
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'width' => '5%',
    'label' => 'LBL_DATE_ENTERED',
    'default' => true,
  ),
  'INDUSTRY' => 
  array (
    'width' => '10%',
    'label' => 'LBL_INDUSTRY',
    'default' => true,
  ),
  'ACCOUNT_TYPE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_TYPE',
    'default' => false,
  ),
  'ANNUAL_REVENUE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_ANNUAL_REVENUE',
    'default' => false,
  ),
  'PHONE_FAX' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PHONE_FAX',
    'default' => false,
  ),
  'BILLING_ADDRESS_STREET' => 
  array (
    'width' => '15%',
    'label' => 'LBL_BILLING_ADDRESS_STREET',
    'default' => false,
  ),
  'BILLING_ADDRESS_STATE' => 
  array (
    'width' => '7%',
    'label' => 'LBL_BILLING_ADDRESS_STATE',
    'default' => false,
  ),
  'BILLING_ADDRESS_POSTALCODE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_BILLING_ADDRESS_POSTALCODE',
    'default' => false,
  ),
  'SHIPPING_ADDRESS_STREET' => 
  array (
    'width' => '15%',
    'label' => 'LBL_SHIPPING_ADDRESS_STREET',
    'default' => false,
  ),
  'SHIPPING_ADDRESS_CITY' => 
  array (
    'width' => '10%',
    'label' => 'LBL_SHIPPING_ADDRESS_CITY',
    'default' => false,
  ),
  'SHIPPING_ADDRESS_STATE' => 
  array (
    'width' => '7%',
    'label' => 'LBL_SHIPPING_ADDRESS_STATE',
    'default' => false,
  ),
  'SHIPPING_ADDRESS_POSTALCODE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_SHIPPING_ADDRESS_POSTALCODE',
    'default' => false,
  ),
  'SHIPPING_ADDRESS_COUNTRY' => 
  array (
    'width' => '10%',
    'label' => 'LBL_SHIPPING_ADDRESS_COUNTRY',
    'default' => false,
  ),
  'RATING' => 
  array (
    'width' => '10%',
    'label' => 'LBL_RATING',
    'default' => false,
  ),
  'PHONE_ALTERNATE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_OTHER_PHONE',
    'default' => false,
  ),
  'WEBSITE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_WEBSITE',
    'default' => false,
  ),
  'OWNERSHIP' => 
  array (
    'width' => '10%',
    'label' => 'LBL_OWNERSHIP',
    'default' => false,
  ),
  'EMPLOYEES' => 
  array (
    'width' => '10%',
    'label' => 'LBL_EMPLOYEES',
    'default' => false,
  ),
  'SIC_CODE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_SIC_CODE',
    'default' => false,
  ),
  'TICKER_SYMBOL' => 
  array (
    'width' => '10%',
    'label' => 'LBL_TICKER_SYMBOL',
    'default' => false,
  ),
  'DATE_MODIFIED' => 
  array (
    'width' => '5%',
    'label' => 'LBL_DATE_MODIFIED',
    'default' => false,
  ),
  'CREATED_BY_NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_CREATED',
    'default' => false,
  ),
  'MODIFIED_BY_NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_MODIFIED',
    'default' => false,
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
