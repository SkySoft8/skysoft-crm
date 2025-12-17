<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig;

require_once __DIR__.\DIRECTORY_SEPARATOR.'ContactPerson'.\DIRECTORY_SEPARATOR.'TechnicalConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'ContactPerson'.\DIRECTORY_SEPARATOR.'SupportConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'ContactPerson'.\DIRECTORY_SEPARATOR.'AdministrativeConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'ContactPerson'.\DIRECTORY_SEPARATOR.'BillingConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'ContactPerson'.\DIRECTORY_SEPARATOR.'OtherConfig.php';

use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class ContactPersonConfig 
{
    private $technical;
    private $support;
    private $administrative;
    private $billing;
    private $other;
    private $_usedProperties = [];

    public function technical(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\TechnicalConfig
    {
        if (null === $this->technical) {
            $this->_usedProperties['technical'] = true;
            $this->technical = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\TechnicalConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "technical()" has already been initialized. You cannot pass values the second time you call technical().');
        }

        return $this->technical;
    }

    public function support(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\SupportConfig
    {
        if (null === $this->support) {
            $this->_usedProperties['support'] = true;
            $this->support = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\SupportConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "support()" has already been initialized. You cannot pass values the second time you call support().');
        }

        return $this->support;
    }

    public function administrative(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\AdministrativeConfig
    {
        if (null === $this->administrative) {
            $this->_usedProperties['administrative'] = true;
            $this->administrative = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\AdministrativeConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "administrative()" has already been initialized. You cannot pass values the second time you call administrative().');
        }

        return $this->administrative;
    }

    public function billing(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\BillingConfig
    {
        if (null === $this->billing) {
            $this->_usedProperties['billing'] = true;
            $this->billing = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\BillingConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "billing()" has already been initialized. You cannot pass values the second time you call billing().');
        }

        return $this->billing;
    }

    public function other(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\OtherConfig
    {
        if (null === $this->other) {
            $this->_usedProperties['other'] = true;
            $this->other = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\OtherConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "other()" has already been initialized. You cannot pass values the second time you call other().');
        }

        return $this->other;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('technical', $value)) {
            $this->_usedProperties['technical'] = true;
            $this->technical = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\TechnicalConfig($value['technical']);
            unset($value['technical']);
        }

        if (array_key_exists('support', $value)) {
            $this->_usedProperties['support'] = true;
            $this->support = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\SupportConfig($value['support']);
            unset($value['support']);
        }

        if (array_key_exists('administrative', $value)) {
            $this->_usedProperties['administrative'] = true;
            $this->administrative = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\AdministrativeConfig($value['administrative']);
            unset($value['administrative']);
        }

        if (array_key_exists('billing', $value)) {
            $this->_usedProperties['billing'] = true;
            $this->billing = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\BillingConfig($value['billing']);
            unset($value['billing']);
        }

        if (array_key_exists('other', $value)) {
            $this->_usedProperties['other'] = true;
            $this->other = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson\OtherConfig($value['other']);
            unset($value['other']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['technical'])) {
            $output['technical'] = $this->technical->toArray();
        }
        if (isset($this->_usedProperties['support'])) {
            $output['support'] = $this->support->toArray();
        }
        if (isset($this->_usedProperties['administrative'])) {
            $output['administrative'] = $this->administrative->toArray();
        }
        if (isset($this->_usedProperties['billing'])) {
            $output['billing'] = $this->billing->toArray();
        }
        if (isset($this->_usedProperties['other'])) {
            $output['other'] = $this->other->toArray();
        }

        return $output;
    }

}
