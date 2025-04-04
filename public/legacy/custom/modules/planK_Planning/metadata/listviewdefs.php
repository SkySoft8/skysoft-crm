<?php
$module_name = 'planK_Planning';
$listViewDefs [$module_name] = 
array (
  'PLANNING_NAME' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PLANNING_NAME',
    'width' => '10%',
    'default' => true,
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
  'PLANNED_SUM' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PLANNED_SUM',
    'width' => '10%',
    'default' => true,
  ),
  'TOTAL_SUM' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_TOTAL_SUM',
    'width' => '10%',
    'default' => true,
  ),
);
;
?>
