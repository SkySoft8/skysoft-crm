<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class X509certMultiConfig 
{
    private $signing;
    private $encryption;
    private $_usedProperties = [];

    /**
     * @param ParamConfigurator|list<ParamConfigurator|mixed> $value
     *
     * @return $this
     */
    public function signing(ParamConfigurator|array $value): static
    {
        $this->_usedProperties['signing'] = true;
        $this->signing = $value;

        return $this;
    }

    /**
     * @param ParamConfigurator|list<ParamConfigurator|mixed> $value
     *
     * @return $this
     */
    public function encryption(ParamConfigurator|array $value): static
    {
        $this->_usedProperties['encryption'] = true;
        $this->encryption = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('signing', $value)) {
            $this->_usedProperties['signing'] = true;
            $this->signing = $value['signing'];
            unset($value['signing']);
        }

        if (array_key_exists('encryption', $value)) {
            $this->_usedProperties['encryption'] = true;
            $this->encryption = $value['encryption'];
            unset($value['encryption']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['signing'])) {
            $output['signing'] = $this->signing;
        }
        if (isset($this->_usedProperties['encryption'])) {
            $output['encryption'] = $this->encryption;
        }

        return $output;
    }

}
