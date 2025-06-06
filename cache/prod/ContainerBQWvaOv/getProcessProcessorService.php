<?php

namespace ContainerBQWvaOv;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getProcessProcessorService extends App_KernelProdContainer
{
    /*
     * Gets the private 'App\Process\DataPersister\ProcessProcessor' shared autowired service.
     *
     * @return \App\Process\DataPersister\ProcessProcessor
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'api-platform'.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'src'.\DIRECTORY_SEPARATOR.'State'.\DIRECTORY_SEPARATOR.'ProcessorInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Process'.\DIRECTORY_SEPARATOR.'DataPersister'.\DIRECTORY_SEPARATOR.'ProcessProcessor.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Process'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'ProcessHandlerRegistry.php';

        return $container->privates['App\\Process\\DataPersister\\ProcessProcessor'] = new \App\Process\DataPersister\ProcessProcessor(new \App\Process\Service\ProcessHandlerRegistry(new RewindableGenerator(function () use ($container) {
            yield 0 => ($container->privates['App\\Install\\Service\\Installation\\InstallActionHandler'] ?? $container->load('getInstallActionHandlerService'));
            yield 1 => ($container->privates['App\\Languages\\LegacyHandler\\SetSessionLanguage'] ?? $container->load('getSetSessionLanguageService'));
            yield 2 => ($container->privates['App\\Module\\LegacyHandler\\Favorites\\UpdateFavorite'] ?? $container->load('getUpdateFavoriteService'));
            yield 3 => ($container->privates['App\\Module\\LegacyHandler\\RecentlyViewed\\AddRecentlyViewed'] ?? $container->load('getAddRecentlyViewedService'));
            yield 4 => ($container->privates['App\\Process\\LegacyHandler\\ACL\\UserACLHandler'] ?? $container->load('getUserACLHandlerService'));
            yield 5 => ($container->privates['App\\Process\\LegacyHandler\\AddContactsToTargetListBulkActionHandler'] ?? $container->load('getAddContactsToTargetListBulkActionHandlerService'));
            yield 6 => ($container->privates['App\\Process\\LegacyHandler\\AddRecordsToTargetListBulkActionHandler'] ?? $container->load('getAddRecordsToTargetListBulkActionHandlerService'));
            yield 7 => ($container->privates['App\\Process\\LegacyHandler\\CreatePortalUserActionHandler'] ?? $container->load('getCreatePortalUserActionHandlerService'));
            yield 8 => ($container->privates['App\\Process\\LegacyHandler\\DisablePortalUserActionHandler'] ?? $container->load('getDisablePortalUserActionHandlerService'));
            yield 9 => ($container->privates['App\\Process\\LegacyHandler\\EnablePortalUserActionHandler'] ?? $container->load('getEnablePortalUserActionHandlerService'));
            yield 10 => ($container->privates['App\\Process\\LegacyHandler\\LinkRelationHandler'] ?? $container->load('getLinkRelationHandlerService'));
            yield 11 => ($container->privates['App\\Process\\LegacyHandler\\ResetPasswordHandler'] ?? $container->load('getResetPasswordHandlerService'));
            yield 12 => ($container->privates['App\\Process\\LegacyHandler\\UnlinkRelationHandler'] ?? $container->load('getUnlinkRelationHandlerService'));
            yield 13 => ($container->privates['App\\Process\\Service\\BulkActions\\CsvExportBulkAction'] ?? $container->load('getCsvExportBulkActionService'));
            yield 14 => ($container->privates['App\\Process\\Service\\BulkActions\\DeleteRecordsBulkAction'] ?? $container->load('getDeleteRecordsBulkActionService'));
            yield 15 => ($container->privates['App\\Process\\Service\\BulkActions\\MassUpdateBulkAction'] ?? $container->load('getMassUpdateBulkActionService'));
            yield 16 => ($container->privates['App\\Process\\Service\\BulkActions\\MergeRecordsBulkAction'] ?? $container->load('getMergeRecordsBulkActionService'));
            yield 17 => ($container->privates['App\\Process\\Service\\BulkActions\\PrintAsPdfBulkAction'] ?? $container->load('getPrintAsPdfBulkActionService'));
            yield 18 => ($container->privates['App\\Process\\Service\\FieldDefault\\DateFieldDefaultCalculation'] ?? $container->load('getDateFieldDefaultCalculationService'));
            yield 19 => ($container->privates['App\\Process\\Service\\RecordActions\\ChangeLogAction'] ?? $container->load('getChangeLogActionService'));
            yield 20 => ($container->privates['App\\Process\\Service\\RecordActions\\ConvertLeadAction'] ?? $container->load('getConvertLeadActionService'));
            yield 21 => ($container->privates['App\\Process\\Service\\RecordActions\\ConvertRecordAction'] ?? $container->load('getConvertRecordActionService'));
            yield 22 => ($container->privates['App\\Process\\Service\\RecordActions\\DeleteRecordAction'] ?? $container->load('getDeleteRecordActionService'));
            yield 23 => ($container->privates['App\\Process\\Service\\RecordActions\\DuplicateRecordAction'] ?? $container->load('getDuplicateRecordActionService'));
            yield 24 => ($container->privates['App\\Process\\Service\\RecordActions\\EditAction'] ?? $container->load('getEditActionService'));
            yield 25 => ($container->privates['App\\Process\\Service\\RecordActions\\MergeDuplicateAction'] ?? $container->load('getMergeDuplicateActionService'));
            yield 26 => ($container->privates['App\\Process\\Service\\RecordActions\\PrintAsPdfAction'] ?? $container->load('getPrintAsPdfActionService'));
            yield 27 => ($container->privates['App\\Process\\Service\\RecordThreadItemActions\\DeleteRecordThreadItemAction'] ?? $container->load('getDeleteRecordThreadItemActionService'));
            yield 28 => ($container->privates['App\\Process\\Service\\RecordThreadItemActions\\DismissAlertAction'] ?? $container->load('getDismissAlertActionService'));
            yield 29 => ($container->privates['App\\Process\\Service\\RecordThreadItemActions\\SnoozeRecordThreadItemAction'] ?? $container->load('getSnoozeRecordThreadItemActionService'));
            yield 30 => ($container->privates['App\\Process\\Service\\RecordThreadListActions\\DeleteAllRecordThreadListAction'] ?? $container->load('getDeleteAllRecordThreadListActionService'));
            yield 31 => ($container->privates['App\\Process\\Service\\RecordThreadListActions\\DismissAllAlertsRecordThreadListAction'] ?? $container->load('getDismissAllAlertsRecordThreadListActionService'));
            yield 32 => ($container->privates['App\\Process\\Service\\RecordThreadListActions\\MarkAsReadRecordThreadListAction'] ?? $container->load('getMarkAsReadRecordThreadListActionService'));
            yield 33 => ($container->privates['App\\UserPreferences\\LegacyHandler\\SaveUiPreferences'] ?? $container->load('getSaveUiPreferencesService'));
            yield 34 => ($container->privates['App\\UserPreferences\\LegacyHandler\\SetUserLanguage'] ?? $container->load('getSetUserLanguageService'));
        }, 35)), ($container->privates['security.helper'] ?? $container->load('getSecurity_HelperService')), ($container->privates['App\\Engine\\LegacyHandler\\AclHandler'] ?? $container->load('getAclHandlerService')));
    }
}
