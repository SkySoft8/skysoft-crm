<?php
$dashletData['AOS_InvoicesDashlet']['searchFields'] = array (
  'status' => 
  array (
    'default' => '',
  ),
  'assigned_user_id' => 
  array (
    'default' => '',
  ),
);
$dashletData['AOS_InvoicesDashlet']['columns'] = array (
  'name' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'default' => true,
    'name' => 'name',
  ),
  'status' => 
  array (
    'width' => '15%',
    'label' => 'LBL_STATUS',
    'default' => true,
    'name' => 'status',
  ),
  'billing_account' => 
  array (
    'width' => '20%',
    'label' => 'LBL_BILLING_ACCOUNT',
    'name' => 'billing_account',
    'default' => true,
  ),
  'total_amount' => 
  array (
    'width' => '15%',
    'label' => 'LBL_GRAND_TOTAL',
    'currency_format' => true,
    'default' => true,
    'name' => 'total_amount',
  ),
  'paid_c' => 
  array (
    'type' => 'currency',
    'default' => true,
    'label' => 'LBL_PAID',
    'currency_format' => true,
    'width' => '10%',
    'name' => 'paid_c',
  ),
  'number' => 
  array (
    'width' => '5%',
    'label' => 'LBL_LIST_NUM',
    'default' => false,
    'name' => 'number',
  ),
  'assigned_user_name' => 
  array (
    'width' => '8%',
    'label' => 'LBL_LIST_ASSIGNED_USER',
    'name' => 'assigned_user_name',
    'default' => false,
  ),
  'billing_contact' => 
  array (
    'width' => '15%',
    'label' => 'LBL_BILLING_CONTACT',
    'name' => 'billing_contact',
    'default' => false,
  ),
  'invoice_date' => 
  array (
    'width' => '15%',
    'label' => 'LBL_INVOICE_DATE',
    'name' => 'invoice_date',
    'default' => false,
  ),
  'date_entered' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_ENTERED',
    'name' => 'date_entered',
    'default' => false,
  ),
  'due_date' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DUE_DATE',
    'default' => false,
    'name' => 'due_date',
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
);
