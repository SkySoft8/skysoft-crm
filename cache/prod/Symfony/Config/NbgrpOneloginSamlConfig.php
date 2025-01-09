<?php

namespace Symfony\Config;

require_once __DIR__.\DIRECTORY_SEPARATOR.'NbgrpOneloginSaml'.\DIRECTORY_SEPARATOR.'OneloginSettingsConfig.php';

use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;
use Symfony\Component\Config\Loader\ParamConfigurator;

/**
 * This class is automatically generated to help in creating a config.
 */
class NbgrpOneloginSamlConfig implements \Symfony\Component\Config\Builder\ConfigBuilderInterface
{
    private $oneloginSettings;
    private $useProxyVars;
    private $idpParameterName;
    private $entityManagerName;
    private $_usedProperties = [];

    public function oneloginSettings(string $name, array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig
    {
        if (!isset($this->oneloginSettings[$name])) {
            $this->_usedProperties['oneloginSettings'] = true;
            $this->oneloginSettings[$name] = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig($value);
        } elseif (1 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "oneloginSettings()" has already been initialized. You cannot pass values the second time you call oneloginSettings().');
        }

        return $this->oneloginSettings[$name];
    }

    /**
     * @default false
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function useProxyVars($value): static
    {
        $this->_usedProperties['useProxyVars'] = true;
        $this->useProxyVars = $value;

        return $this;
    }

    /**
     * @default 'idp'
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function idpParameterName($value): static
    {
        $this->_usedProperties['idpParameterName'] = true;
        $this->idpParameterName = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function entityManagerName($value): static
    {
        $this->_usedProperties['entityManagerName'] = true;
        $this->entityManagerName = $value;

        return $this;
    }

    public function getExtensionAlias(): string
    {
        return 'nbgrp_onelogin_saml';
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('onelogin_settings', $value)) {
            $this->_usedProperties['oneloginSettings'] = true;
            $this->oneloginSettings = array_map(fn ($v) => new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig($v), $value['onelogin_settings']);
            unset($value['onelogin_settings']);
        }

        if (array_key_exists('use_proxy_vars', $value)) {
            $this->_usedProperties['useProxyVars'] = true;
            $this->useProxyVars = $value['use_proxy_vars'];
            unset($value['use_proxy_vars']);
        }

        if (array_key_exists('idp_parameter_name', $value)) {
            $this->_usedProperties['idpParameterName'] = true;
            $this->idpParameterName = $value['idp_parameter_name'];
            unset($value['idp_parameter_name']);
        }

        if (array_key_exists('entity_manager_name', $value)) {
            $this->_usedProperties['entityManagerName'] = true;
            $this->entityManagerName = $value['entity_manager_name'];
            unset($value['entity_manager_name']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['oneloginSettings'])) {
            $output['onelogin_settings'] = array_map(fn ($v) => $v->toArray(), $this->oneloginSettings);
        }
        if (isset($this->_usedProperties['useProxyVars'])) {
            $output['use_proxy_vars'] = $this->useProxyVars;
        }
        if (isset($this->_usedProperties['idpParameterName'])) {
            $output['idp_parameter_name'] = $this->idpParameterName;
        }
        if (isset($this->_usedProperties['entityManagerName'])) {
            $output['entity_manager_name'] = $this->entityManagerName;
        }

        return $output;
    }

}
