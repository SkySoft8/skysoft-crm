<?php
$hook_array['after_save'][] = Array(1, 'Fix timezone returning to UTC', 'custom/Extension/modules/Users/TimezoneQuickFix.php','TimezoneQuickFix', 'fix');