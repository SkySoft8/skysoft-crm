<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerBQWvaOv\App_KernelProdContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerBQWvaOv/App_KernelProdContainer.php') {
    touch(__DIR__.'/ContainerBQWvaOv.legacy');

    return;
}

if (!\class_exists(App_KernelProdContainer::class, false)) {
    \class_alias(\ContainerBQWvaOv\App_KernelProdContainer::class, App_KernelProdContainer::class, false);
}

return new \ContainerBQWvaOv\App_KernelProdContainer([
    'container.build_hash' => 'BQWvaOv',
    'container.build_id' => '27f368ad',
    'container.build_time' => 1745418395,
    'container.runtime_mode' => \in_array(\PHP_SAPI, ['cli', 'phpdbg', 'embed'], true) ? 'web=0' : 'web=1',
], __DIR__.\DIRECTORY_SEPARATOR.'ContainerBQWvaOv');
