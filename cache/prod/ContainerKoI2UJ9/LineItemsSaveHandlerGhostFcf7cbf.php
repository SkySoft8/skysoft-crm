<?php

namespace ContainerKoI2UJ9;

include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordSaveHandlers'.\DIRECTORY_SEPARATOR.'BaseModuleSaveHandlerInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordSaveHandlers'.\DIRECTORY_SEPARATOR.'RecordFieldTypeSaveHandlerInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Module'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Fields'.\DIRECTORY_SEPARATOR.'LineItems'.\DIRECTORY_SEPARATOR.'SaveHandlers'.\DIRECTORY_SEPARATOR.'LineItemsSaveHandler.php';
class LineItemsSaveHandlerGhostFcf7cbf extends \App\Module\Service\Fields\LineItems\SaveHandlers\LineItemsSaveHandler implements \Symfony\Component\VarExporter\LazyObjectInterface
{
    use \Symfony\Component\VarExporter\LazyGhostTrait;
    private const LAZY_OBJECT_PROPERTY_SCOPES = [
        "\0".'*'."\0".'linkedRecordsProvider' => [parent::class, 'linkedRecordsProvider', null],
        'linkedRecordsProvider' => [parent::class, 'linkedRecordsProvider', null],
    ];
}
class_exists(\Symfony\Component\VarExporter\Internal\Hydrator::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectRegistry::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectState::class);

if (!\class_exists('LineItemsSaveHandlerGhostFcf7cbf', false)) {
    \class_alias(__NAMESPACE__.'\\LineItemsSaveHandlerGhostFcf7cbf', 'LineItemsSaveHandlerGhostFcf7cbf', false);
}
