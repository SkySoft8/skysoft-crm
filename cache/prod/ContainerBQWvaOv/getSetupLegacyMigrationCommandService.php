<?php

namespace ContainerBQWvaOv;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSetupLegacyMigrationCommandService extends App_KernelProdContainer
{
    /*
     * Gets the private 'App\Install\Command\SetupLegacyMigrationCommand' shared autowired service.
     *
     * @return \App\Install\Command\SetupLegacyMigrationCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'symfony'.\DIRECTORY_SEPARATOR.'console'.\DIRECTORY_SEPARATOR.'Command'.\DIRECTORY_SEPARATOR.'Command.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Command'.\DIRECTORY_SEPARATOR.'BaseCommand.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Command'.\DIRECTORY_SEPARATOR.'BaseStepExecutorCommand.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Command'.\DIRECTORY_SEPARATOR.'SetupLegacyMigrationCommand.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Engine'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'ProcessSteps'.\DIRECTORY_SEPARATOR.'ProcessStepExecutorInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Engine'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'ProcessSteps'.\DIRECTORY_SEPARATOR.'ProcessStepExecutor.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'LegacyMigration'.\DIRECTORY_SEPARATOR.'LegacyMigrationHandlerInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'LegacyMigration'.\DIRECTORY_SEPARATOR.'LegacyMigrationHandler.php';

        $container->privates['App\\Install\\Command\\SetupLegacyMigrationCommand'] = $instance = new \App\Install\Command\SetupLegacyMigrationCommand(new \App\Install\Service\LegacyMigration\LegacyMigrationHandler(new RewindableGenerator(function () use ($container) {
            yield 0 => (new \App\Install\Service\LegacyMigration\Steps\ChangeRewriteBase((\dirname(__DIR__, 3).'/public/legacy')));
            yield 1 => (isset($container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\ChangeTheme']) ? $container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\ChangeTheme']($container) : $container->load('getChangeThemeService'));
            yield 2 => (isset($container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\CheckLegacyConfig']) ? $container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\CheckLegacyConfig']($container) : $container->load('getCheckLegacyConfigService'));
            yield 3 => (isset($container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\ManualConfigCheck']) ? $container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\ManualConfigCheck']($container) : $container->load('getManualConfigCheckService'));
            yield 4 => (isset($container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\ManualRewriteBaseCheck']) ? $container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\ManualRewriteBaseCheck']($container) : $container->load('getManualRewriteBaseCheckService'));
            yield 5 => (isset($container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\SetupEnv']) ? $container->factories['service_container']['App\\Install\\Service\\LegacyMigration\\Steps\\SetupEnv']($container) : $container->load('getSetupEnvService'));
        }, 6), ($container->services['monolog.logger.upgrade'] ?? $container->load('getMonolog_Logger_UpgradeService'))), ($container->privates['App\\Engine\\LegacyHandler\\DefaultLegacyHandler'] ?? $container->load('getDefaultLegacyHandlerService')));

        $instance->setDefaultSessionName('SCRMSESSID');
        $instance->setLegacySessionName('SCRMSESSID');
        $instance->setRequestStack(($container->services['request_stack'] ??= new \Symfony\Component\HttpFoundation\RequestStack()));
        $instance->setAppStringsHandler(($container->privates['App\\Languages\\LegacyHandler\\AppStringsHandler'] ?? $container->load('getAppStringsHandlerService')));
        $instance->setName('suitecrm:app:setup-legacy-migration');

        return $instance;
    }
}
