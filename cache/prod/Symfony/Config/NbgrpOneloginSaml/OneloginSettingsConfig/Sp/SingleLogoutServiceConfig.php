<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class SingleLogoutServiceConfig 
{
    private $url;
    private $binding;
    private $_usedProperties = [];

    /**
     * @default '<request_scheme_and_host>/saml/logout'
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function url($value): static
    {
        $this->_usedProperties['url'] = true;
        $this->url = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function binding($value): static
    {
        $this->_usedProperties['binding'] = true;
        $this->binding = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('url', $value)) {
            $this->_usedProperties['url'] = true;
            $this->url = $value['url'];
            unset($value['url']);
        }

        if (array_key_exists('binding', $value)) {
            $this->_usedProperties['binding'] = true;
            $this->binding = $value['binding'];
            unset($value['binding']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['url'])) {
            $output['url'] = $this->url;
        }
        if (isset($this->_usedProperties['binding'])) {
            $output['binding'] = $this->binding;
        }

        return $output;
    }

}
