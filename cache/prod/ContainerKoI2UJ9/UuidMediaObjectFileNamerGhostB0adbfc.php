<?php

namespace ContainerKoI2UJ9;

include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'vich'.\DIRECTORY_SEPARATOR.'uploader-bundle'.\DIRECTORY_SEPARATOR.'src'.\DIRECTORY_SEPARATOR.'Naming'.\DIRECTORY_SEPARATOR.'NamerInterface.php';
include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'MediaObjects'.\DIRECTORY_SEPARATOR.'Services'.\DIRECTORY_SEPARATOR.'UuidMediaObjectFileNamer.php';
class UuidMediaObjectFileNamerGhostB0adbfc extends \App\MediaObjects\Services\UuidMediaObjectFileNamer implements \Symfony\Component\VarExporter\LazyObjectInterface
{
    use \Symfony\Component\VarExporter\LazyGhostTrait;
    private const LAZY_OBJECT_PROPERTY_SCOPES = [];
}
class_exists(\Symfony\Component\VarExporter\Internal\Hydrator::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectRegistry::class);
class_exists(\Symfony\Component\VarExporter\Internal\LazyObjectState::class);

if (!\class_exists('UuidMediaObjectFileNamerGhostB0adbfc', false)) {
    \class_alias(__NAMESPACE__.'\\UuidMediaObjectFileNamerGhostB0adbfc', 'UuidMediaObjectFileNamerGhostB0adbfc', false);
}
