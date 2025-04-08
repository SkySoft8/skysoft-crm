<?php
$dashletData['OpportunitiesDashlet']['searchFields'] = array (
  'deal_status_c' => 
  array (
    'default' => '',
  ),
  'assigned_user_name' => 
  array (
    'default' => '',
  ),
);
$dashletData['OpportunitiesDashlet']['columns'] = array (
  'deal_status_c' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_DEAL_STATUS',
    'width' => '10%',
    'name' => 'deal_status_c',
  ),
  'assigned_user_name' => 
  array (
    'width' => '8%',
    'label' => 'LBL_LIST_ASSIGNED_USER',
    'name' => 'assigned_user_name',
    'default' => true,
  ),
  'amount_usdollar' => 
  array (
    'width' => '15%',
    'label' => 'LBL_AMOUNT_USDOLLAR',
    'default' => false,
    'currency_format' => true,
    'name' => 'amount_usdollar',
  ),
  'date_closed' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_CLOSED',
    'default' => false,
    'defaultOrderColumn' => 
    array (
      'sortOrder' => 'ASC',
    ),
    'name' => 'date_closed',
  ),
  'account_name' => 
  array (
    'width' => '35%',
    'label' => 'LBL_ACCOUNT_NAME',
    'default' => false,
    'link' => false,
    'id' => 'account_id',
    'ACLTag' => 'ACCOUNT',
    'name' => 'account_name',
  ),
  'name' => 
  array (
    'width' => '35%',
    'label' => 'LBL_OPPORTUNITY_NAME',
    'link' => true,
    'default' => false,
    'name' => 'name',
  ),
  'opportunity_type' => 
  array (
    'width' => '15%',
    'label' => 'LBL_TYPE',
    'name' => 'opportunity_type',
    'default' => false,
  ),
  'lead_source' => 
  array (
    'width' => '15%',
    'label' => 'LBL_LEAD_SOURCE',
    'name' => 'lead_source',
    'default' => false,
  ),
  'sales_stage' => 
  array (
    'width' => '15%',
    'label' => 'LBL_SALES_STAGE',
    'name' => 'sales_stage',
    'default' => false,
  ),
  'probability' => 
  array (
    'width' => '15%',
    'label' => 'LBL_PROBABILITY',
    'name' => 'probability',
    'default' => false,
  ),
  'date_entered' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_ENTERED',
    'name' => 'date_entered',
    'default' => false,
  ),
  'date_modified' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_MODIFIED',
    'name' => 'date_modified',
    'default' => false,
  ),
  'created_by' => 
  array (
    'width' => '8%',
    'label' => 'LBL_CREATED',
    'name' => 'created_by',
    'default' => false,
  ),
  'next_step' => 
  array (
    'width' => '10%',
    'label' => 'LBL_NEXT_STEP',
    'name' => 'next_step',
    'default' => false,
  ),
);
