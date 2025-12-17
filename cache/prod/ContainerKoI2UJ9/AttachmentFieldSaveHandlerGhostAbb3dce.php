<?php

namespace ContainerKoI2UJ9;

include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordSaveHandlers'.\DIRECTORY_SEPARATOR.'BaseModuleSaveHandlerInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'RecordSaveHandlers'.\DIRECTORY_SEPARATOR.'RecordFieldTypeSaveHandlerInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Module'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Fields'.\DIRECTORY_SEPARATOR.'Attachments'.\DIRECTORY_SEPARATOR.'SaveHandlers'.\DIRECTORY_SEPARATOR.'AttachmentFieldSaveHandler.php';
class AttachmentFieldSaveHandlerGhostAbb3dce extends \App\Module\Service\Fields\Attachments\SaveHandlers\AttachmentFieldSaveHandler implements \Symfony\Component\VarExporter\LazyObjectInterface
{
    use \Symfony\Component\VarExporter\LazyGhostTrait;
    private const LAZY_OBJECT_PROPERTY_SCOPES = [
        "\0".'*'."\0".'mediaObjectManager' => [parent::class, 'mediaObjectManager', null],
        "\0".'*'."\0".'moduleNameMapper' => [parent::class, 'moduleNameMapper', null],
        'mediaObjectManager' => [parent::class, 'mediaObjectManager', null],
        'moduleNameMapper' => [parent::class, 'moduleNameMapper', null],
    ];
}
class_exists(\Symfony\Component\VarExporter\Internal\Hydrator::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectRegistry::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectState::class);

if (!\class_exists('AttachmentFieldSaveHandlerGhostAbb3dce', false)) {
    \class_alias(__NAMESPACE__.'\\AttachmentFieldSaveHandlerGhostAbb3dce', 'AttachmentFieldSaveHandlerGhostAbb3dce', false);
}
