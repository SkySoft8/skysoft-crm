<?php
$listViewDefs ['Meetings'] = 
array (
  'NAME' => 
  array (
    'width' => '40%',
    'label' => 'LBL_LIST_SUBJECT',
    'link' => true,
    'default' => true,
  ),
  'STATUS' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_STATUS',
    'link' => false,
    'default' => true,
  ),
  'DATE_END' => 
  array (
    'type' => 'datetimecombo',
    'label' => 'LBL_DATE_END',
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '2%',
    'label' => 'LBL_LIST_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'SET_COMPLETE' => 
  array (
    'width' => '1%',
    'label' => 'LBL_LIST_CLOSE',
    'link' => true,
    'sortable' => false,
    'default' => false,
    'related_fields' => 
    array (
      0 => 'status',
    ),
  ),
  'DIRECTION' => 
  array (
    'type' => 'enum',
    'label' => 'LBL_LIST_DIRECTION',
    'width' => '10%',
    'default' => false,
  ),
  'CONTACT_NAME' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_CONTACT',
    'link' => true,
    'id' => 'CONTACT_ID',
    'module' => 'Contacts',
    'default' => false,
    'ACLTag' => 'CONTACT',
  ),
  'PARENT_NAME' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_RELATED_TO',
    'dynamic_module' => 'PARENT_TYPE',
    'id' => 'PARENT_ID',
    'link' => true,
    'default' => false,
    'sortable' => false,
    'ACLTag' => 'PARENT',
    'related_fields' => 
    array (
      0 => 'parent_id',
      1 => 'parent_type',
    ),
  ),
  'DATE_ENTERED' => 
  array (
    'width' => '10%',
    'label' => 'LBL_DATE_ENTERED',
    'default' => false,
  ),
  'DATE_START' => 
  array (
    'width' => '15%',
    'label' => 'LBL_LIST_DATE',
    'link' => false,
    'default' => false,
    'related_fields' => 
    array (
      0 => 'time_start',
    ),
  ),
);
;
?>
