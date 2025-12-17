<?php

namespace ContainerKoI2UJ9;

include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordDeleteHandlers'.\DIRECTORY_SEPARATOR.'RecordDeleteHandlerRegistryInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordDeleteHandlers'.\DIRECTORY_SEPARATOR.'ModuleDeleteHandlerTrait.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordDeleteHandlers'.\DIRECTORY_SEPARATOR.'RecordDeleteHandlerTrait.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordDeleteHandlers'.\DIRECTORY_SEPARATOR.'RecordDeleteHandlerRegistry.php';
class RecordDeleteHandlerRegistryGhostF615e8a extends \App\Data\Service\Record\RecordDeleteHandlers\RecordDeleteHandlerRegistry implements \Symfony\Component\VarExporter\LazyObjectInterface
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

if (!\class_exists('RecordDeleteHandlerRegistryGhostF615e8a', false)) {
    \class_alias(__NAMESPACE__.'\\RecordDeleteHandlerRegistryGhostF615e8a', 'RecordDeleteHandlerRegistryGhostF615e8a', false);
}
