<?php

namespace ContainerKoI2UJ9;

include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'Mappers'.\DIRECTORY_SEPARATOR.'BaseModuleMapperInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'Mappers'.\DIRECTORY_SEPARATOR.'BaseFieldTypeMapperInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Data'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Record'.\DIRECTORY_SEPARATOR.'ApiRecordMappers'.\DIRECTORY_SEPARATOR.'ApiRecordFieldTypeMapperInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Module'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Fields'.\DIRECTORY_SEPARATOR.'LineItems'.\DIRECTORY_SEPARATOR.'Mappers'.\DIRECTORY_SEPARATOR.'LineItemsApiMapperTrait.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Module'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Fields'.\DIRECTORY_SEPARATOR.'LineItems'.\DIRECTORY_SEPARATOR.'Mappers'.\DIRECTORY_SEPARATOR.'LineItemsRetrieveApiMapper.php';
class LineItemsRetrieveApiMapperGhost80d1d1e extends \App\Module\Service\Fields\LineItems\Mappers\LineItemsRetrieveApiMapper implements \Symfony\Component\VarExporter\LazyObjectInterface
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

if (!\class_exists('LineItemsRetrieveApiMapperGhost80d1d1e', false)) {
    \class_alias(__NAMESPACE__.'\\LineItemsRetrieveApiMapperGhost80d1d1e', 'LineItemsRetrieveApiMapperGhost80d1d1e', false);
}
