<?php
$dashletData['planK_PlanningDashlet']['searchFields'] = array (
  'month' => 
  array (
    'default' => '',
  ),
  'year' => 
  array (
    'default' => '',
  ),
);
$dashletData['planK_PlanningDashlet']['columns'] = array (
  'kp_total' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_KP_TOTAL',
    'width' => '10%',
    'default' => true,
  ),
  'project_total' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PROJECT_TOTAL',
    'width' => '10%',
    'default' => true,
  ),
  'total_summary' => 
  array (
    'type' => 'currency',
    'label' => 'LBL_TOTAL_SUMMARY',
    'currency_format' => true,
    'width' => '10%',
    'default' => true,
  ),
  'date_modified' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_MODIFIED',
    'name' => 'date_modified',
    'default' => false,
  ),
  'date_entered' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_ENTERED',
    'default' => false,
    'name' => 'date_entered',
  ),
  'plan_sum' => 
  array (
    'type' => 'currency',
    'label' => 'LBL_PLAN_SUM',
    'currency_format' => true,
    'width' => '10%',
    'default' => false,
  ),
  'name' => 
  array (
    'width' => '40%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'default' => false,
    'name' => 'name',
  ),
  'created_by' => 
  array (
    'width' => '8%',
    'label' => 'LBL_CREATED',
    'name' => 'created_by',
    'default' => false,
  ),
  'assigned_user_name' => 
  array (
    'width' => '8%',
    'label' => 'LBL_LIST_ASSIGNED_USER',
    'name' => 'assigned_user_name',
    'default' => false,
  ),
);
