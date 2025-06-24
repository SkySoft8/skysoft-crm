<?php
$module_name = 'planK_Planning';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'month',
            'studio' => 'visible',
            'label' => 'LBL_MONTH',
          ),
          1 => 
          array (
            'name' => 'year',
            'studio' => 'visible',
            'label' => 'LBL_YEAR',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'kp_total',
            'label' => 'LBL_KP_TOTAL',
          ),
          1 => '',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'project_total',
            'label' => 'LBL_PROJECT_TOTAL',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'plan_sum',
            'label' => 'LBL_PLAN_SUM',
          ),
          1 => 
          array (
            'name' => 'total_summary',
            'label' => 'LBL_TOTAL_SUMMARY',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'year_plan',
            'studio' => 'visible',
            'label' => 'LBL_YEAR_PLAN',
          ),
        ),
      ),
    ),
  ),
);
;
?>
