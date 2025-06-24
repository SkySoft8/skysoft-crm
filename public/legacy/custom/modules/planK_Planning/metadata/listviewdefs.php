<?php
$module_name = 'planK_Planning';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'YEAR' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_YEAR',
    'width' => '10%',
    'default' => true,
  ),
  'MONTH' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_MONTH',
    'width' => '10%',
    'default' => true,
  ),
  'KP_TOTAL' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_KP_TOTAL',
    'width' => '10%',
    'default' => true,
  ),
  'PROJECT_TOTAL' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PROJECT_TOTAL',
    'width' => '10%',
    'default' => true,
  ),
  'PLAN_SUM' => 
  array (
    'type' => 'currency',
    'label' => 'LBL_PLAN_SUM',
    'currency_format' => true,
    'width' => '10%',
    'default' => true,
  ),
  'TOTAL_SUMMARY' => 
  array (
    'type' => 'currency',
    'label' => 'LBL_TOTAL_SUMMARY',
    'currency_format' => true,
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => false,
  ),
  'PLANNING_NAME' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PLANNING_NAME',
    'width' => '10%',
    'default' => false,
  ),
);
;
?>
