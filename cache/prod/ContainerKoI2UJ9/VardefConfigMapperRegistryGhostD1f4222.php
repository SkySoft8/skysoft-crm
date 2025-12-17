<?php

namespace ContainerKoI2UJ9;

include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'FieldDefinitions'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'VardefConfigMapperRegistry.php';
class VardefConfigMapperRegistryGhostD1f4222 extends \App\FieldDefinitions\Service\VardefConfigMapperRegistry implements \Symfony\Component\VarExporter\LazyObjectInterface
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

if (!\class_exists('VardefConfigMapperRegistryGhostD1f4222', false)) {
    \class_alias(__NAMESPACE__.'\\VardefConfigMapperRegistryGhostD1f4222', 'VardefConfigMapperRegistryGhostD1f4222', false);
}
