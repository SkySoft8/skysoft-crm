<?php

namespace ContainerKoI2UJ9;

include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordSaveHandlers'.\DIRECTORY_SEPARATOR.'ModuleSaveHandlerTrait.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordSaveHandlers'.\DIRECTORY_SEPARATOR.'RecordSaveHandlerTrait.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordSaveHandlers'.\DIRECTORY_SEPARATOR.'RecordSaveHandlerRegistry.php';
class RecordSaveHandlerRegistryGhostF9c3335 extends \App\Data\Service\Record\RecordSaveHandlers\RecordSaveHandlerRegistry implements \Symfony\Component\VarExporter\LazyObjectInterface
{
    use \Symfony\Component\VarExporter\LazyGhostTrait;
    private const LAZY_OBJECT_PROPERTY_SCOPES = [
        "\0".'*'."\0".'registry' => [parent::class, 'registry', null],
        'registry' => [parent::class, 'registry', null],
    ];
}
class_exists(\Symfony\Component\VarExporter\Internal\Hydrator::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectRegistry::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectState::class);

if (!\class_exists('RecordSaveHandlerRegistryGhostF9c3335', false)) {
    \class_alias(__NAMESPACE__.'\\RecordSaveHandlerRegistryGhostF9c3335', 'RecordSaveHandlerRegistryGhostF9c3335', false);
}
