<?php
$listViewDefs ['Prospects'] = 
array (
  'FULL_NAME' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'related_fields' => 
    array (
      0 => 'first_name',
      1 => 'last_name',
    ),
    'orderBy' => 'last_name',
    'default' => true,
  ),
  'EMAIL1' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_EMAIL_ADDRESS',
    'sortable' => false,
    'link' => false,
    'default' => true,
    'customCode' => '{$EMAIL1_LINK}',
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'link' => true,
    'type' => 'relate',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'id' => 'ASSIGNED_USER_ID',
    'width' => '10%',
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => false,
  ),
  'PHONE_WORK' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_PHONE',
    'link' => false,
    'default' => false,
  ),
  'TITLE' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_TITLE',
    'link' => false,
    'default' => false,
  ),
);
$viewdefs ['Prospects'] ['ListView'] = 
array (
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
    ),
  ),
);
?>
