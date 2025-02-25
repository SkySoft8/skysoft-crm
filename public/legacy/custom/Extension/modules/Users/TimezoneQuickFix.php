<?php
// FILE: // /var/www/public/legacy/custom/Extension/modules/Users/TimezoneQuickFix.php
class TimezoneQuickFix
{
    const FORCED_TIMEZONE = 'Europe/Minsk';

    function fix($bean, $event, $arguments)
    {
        global $current_user;

        if ('UserPreference' != $bean->object_name ?? '') {
            return;
        }
        if (self::FORCED_TIMEZONE == $current_user->getPreference('timezone')) {
            return;
        }
        $current_user->setPreference('timezone', self::FORCED_TIMEZONE, 0, 'global');
    }
}
