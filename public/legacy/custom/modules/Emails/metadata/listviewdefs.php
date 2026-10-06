<?php
$listViewDefs ['Emails'] = 
array (
  'FROM_ADDR_NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_LIST_FROM_ADDR',
    'default' => true,
    'sortable' => false,
  ),
  'INDICATOR' => 
  array (
    'width' => '32%',
    'label' => 'LBL_INDICATOR',
    'default' => true,
    'sortable' => false,
    'hide_header_label' => true,
  ),
  'SUBJECT' => 
  array (
    'width' => '32%',
    'label' => 'LBL_LIST_SUBJECT',
    'default' => true,
    'link' => false,
    'customCode' => '',
    'sortable' => false,
  ),
  'DATE_SENT_RECEIVED' => 
  array (
    'width' => '32%',
    'label' => 'LBL_LIST_DATE_SENT_RECEIVED',
    'default' => true,
    'sortable' => false,
    'force_show_sort_direction' => true,
  ),
  'CATEGORY_ID' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_CATEGORY',
    'default' => true,
    'sortable' => false,
  ),
  'HAS_ATTACHMENT' => 
  array (
    'width' => '32%',
    'label' => 'LBL_HAS_ATTACHMENT_INDICATOR',
    'default' => false,
    'sortable' => false,
    'hide_header_label' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => false,
    'sortable' => false,
  ),
  'TO_ADDRS_NAMES' => 
  array (
    'width' => '32%',
    'label' => 'LBL_LIST_TO_ADDR',
    'default' => false,
    'sortable' => false,
  ),
);
$viewdefs['Emails']['ListView']['templateMeta'] = array (
  'form' => 
  array (
    'buttons' => 
    array (
      0 => 
      array (
        'customCode' => '<a class="btn" data-action="emails-show-compose-modal" title="{$MOD.LBL_COMPOSEEMAIL}"><span class="glyphicon glyphicon-envelope"></span></a>',
      ),
      1 => 
      array (
        'customCode' => '<a class="btn" data-action="emails-configure" title="{$MOD.LBL_EMAILSETTINGS}"><span class="glyphicon glyphicon-cog"></span></a>',
      ),
      2 => 
      array (
        'customCode' => '<a class="btn" data-action="emails-check-new-email" title="{$MOD.LBL_BUTTON_CHECK_TITLE}"><span class="glyphicon glyphicon-refresh"></span></a>',
      ),
      3 => 
      array (
        'customCode' => '<a class="btn" data-action="emails-show-folders-modal" title="{$MOD.LBL_SELECT_FOLDER}"><span class="glyphicon glyphicon-folder-open"></span></a>',
      ),
    ),
    'actions' => 
    array (
      0 => 
      array (
        'customCode' => '<a href="javascript:void(0)" class="parent-dropdown-handler" id="delete_listview_top" onclick="return false;"><label class="selected-actions-label hidden-mobile">{$APP.LBL_BULK_ACTION_BUTTON_LABEL_MOBILE}<span class=\'suitepicon suitepicon-action-caret\'></span></label><label class="selected-actions-label hidden-desktop">{$APP.LBL_BULK_ACTION_BUTTON_LABEL}</label></a>',
      ),
      1 => 
      array (
        'customCode' => '<a data-action="emails-import-multiple" title="{$MOD.LBL_IMPORT}">{$MOD.LBL_IMPORT}</a>',
      ),
      2 => 
      array (
        'customCode' => '<a data-action="emails-delete-multiple" title="{$MOD.LBL_BUTTON_DELETE_IMAP}">{$MOD.LBL_BUTTON_DELETE_IMAP}</a>',
      ),
      3 => 
      array (
        'customCode' => '<a data-action="emails-mark" data-for="unread" title="{$MOD.LBL_MARK_UNREAD}">{$MOD.LBL_MARK_UNREAD}</a>',
      ),
      4 => 
      array (
        'customCode' => '<a data-action="emails-mark" data-for="read" title="{$MOD.LBL_MARK_READ}">{$MOD.LBL_MARK_READ}</a>',
      ),
      5 => 
      array (
        'customCode' => '<a data-action="emails-mark" data-for="flagged" title="{$MOD.LBL_MARK_FLAGGED}">{$MOD.LBL_MARK_FLAGGED}</a>',
      ),
      6 => 
      array (
        'customCode' => '<a data-action="emails-mark" data-for="unflagged" title="{$MOD.LBL_MARK_UNFLAGGED}">{$MOD.LBL_MARK_UNFLAGGED}</a>',
      ),
    ),
    'headerTpl' => 'modules/Emails/include/ListView/ListViewHeader.tpl',
  ),
  'includes' => 
  array (
    0 => 
    array (
      'file' => 'include/javascript/jstree/dist/jstree.js',
    ),
    1 => 
    array (
      'file' => 'modules/Emails/include/ListView/ComposeViewModal.js',
    ),
    2 => 
    array (
      'file' => 'modules/Emails/include/ListView/SettingsView.js',
    ),
    3 => 
    array (
      'file' => 'modules/Emails/include/ListView/CheckNewEmails.js',
    ),
    4 => 
    array (
      'file' => 'modules/Emails/include/ListView/FoldersViewModal.js',
    ),
    5 => 
    array (
      'file' => 'modules/Emails/include/ListView/ListViewHeader.js',
    ),
    6 => 
    array (
      'file' => 'modules/Emails/include/DetailView/ImportView.js',
    ),
    7 => 
    array (
      'file' => 'modules/Emails/include/ListView/ImportEmailAction.js',
    ),
    8 => 
    array (
      'file' => 'modules/Emails/include/ListView/MarkEmails.js',
    ),
    9 => 
    array (
      'file' => 'modules/Emails/include/ListView/DeleteEmailAction.js',
    ),
  ),
  'options' => 
  array (
    'hide_edit_link' => true,
  ),
)$viewdefs ['Emails'] ['ListView'] = 
array (
  'templateMeta' => 
  array (
    'form' => 
    array (
      'buttons' => 
      array (
        0 => 
        array (
          'customCode' => '<a class="btn" data-action="emails-show-compose-modal" title="{$MOD.LBL_COMPOSEEMAIL}"><span class="glyphicon glyphicon-envelope"></span></a>',
        ),
        1 => 
        array (
          'customCode' => '<a class="btn" data-action="emails-configure" title="{$MOD.LBL_EMAILSETTINGS}"><span class="glyphicon glyphicon-cog"></span></a>',
        ),
        2 => 
        array (
          'customCode' => '<a class="btn" data-action="emails-check-new-email" title="{$MOD.LBL_BUTTON_CHECK_TITLE}"><span class="glyphicon glyphicon-refresh"></span></a>',
        ),
        3 => 
        array (
          'customCode' => '<a class="btn" data-action="emails-show-folders-modal" title="{$MOD.LBL_SELECT_FOLDER}"><span class="glyphicon glyphicon-folder-open"></span></a>',
        ),
      ),
      'actions' => 
      array (
        0 => 
        array (
          'customCode' => '<a href="javascript:void(0)" class="parent-dropdown-handler" id="delete_listview_top" onclick="return false;"><label class="selected-actions-label hidden-mobile">{$APP.LBL_BULK_ACTION_BUTTON_LABEL_MOBILE}<span class=\'suitepicon suitepicon-action-caret\'></span></label><label class="selected-actions-label hidden-desktop">{$APP.LBL_BULK_ACTION_BUTTON_LABEL}</label></a>',
        ),
        1 => 
        array (
          'customCode' => '<a data-action="emails-import-multiple" title="{$MOD.LBL_IMPORT}">{$MOD.LBL_IMPORT}</a>',
        ),
        2 => 
        array (
          'customCode' => '<a data-action="emails-delete-multiple" title="{$MOD.LBL_BUTTON_DELETE_IMAP}">{$MOD.LBL_BUTTON_DELETE_IMAP}</a>',
        ),
        3 => 
        array (
          'customCode' => '<a data-action="emails-mark" data-for="unread" title="{$MOD.LBL_MARK_UNREAD}">{$MOD.LBL_MARK_UNREAD}</a>',
        ),
        4 => 
        array (
          'customCode' => '<a data-action="emails-mark" data-for="read" title="{$MOD.LBL_MARK_READ}">{$MOD.LBL_MARK_READ}</a>',
        ),
        5 => 
        array (
          'customCode' => '<a data-action="emails-mark" data-for="flagged" title="{$MOD.LBL_MARK_FLAGGED}">{$MOD.LBL_MARK_FLAGGED}</a>',
        ),
        6 => 
        array (
          'customCode' => '<a data-action="emails-mark" data-for="unflagged" title="{$MOD.LBL_MARK_UNFLAGGED}">{$MOD.LBL_MARK_UNFLAGGED}</a>',
        ),
      ),
      'headerTpl' => 'modules/Emails/include/ListView/ListViewHeader.tpl',
    ),
    'includes' => 
    array (
      0 => 
      array (
        'file' => 'include/javascript/jstree/dist/jstree.js',
      ),
      1 => 
      array (
        'file' => 'modules/Emails/include/ListView/ComposeViewModal.js',
      ),
      2 => 
      array (
        'file' => 'modules/Emails/include/ListView/SettingsView.js',
      ),
      3 => 
      array (
        'file' => 'modules/Emails/include/ListView/CheckNewEmails.js',
      ),
      4 => 
      array (
        'file' => 'modules/Emails/include/ListView/FoldersViewModal.js',
      ),
      5 => 
      array (
        'file' => 'modules/Emails/include/ListView/ListViewHeader.js',
      ),
      6 => 
      array (
        'file' => 'modules/Emails/include/DetailView/ImportView.js',
      ),
      7 => 
      array (
        'file' => 'modules/Emails/include/ListView/ImportEmailAction.js',
      ),
      8 => 
      array (
        'file' => 'modules/Emails/include/ListView/MarkEmails.js',
      ),
      9 => 
      array (
        'file' => 'modules/Emails/include/ListView/DeleteEmailAction.js',
      ),
    ),
    'options' => 
    array (
      'hide_edit_link' => true,
    ),
  ),
);
?>
