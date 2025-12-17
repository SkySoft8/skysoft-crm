<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class CompressConfig 
{
    private $requests;
    private $responses;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function requests($value): static
    {
        $this->_usedProperties['requests'] = true;
        $this->requests = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function responses($value): static
    {
        $this->_usedProperties['responses'] = true;
        $this->responses = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('requests', $value)) {
            $this->_usedProperties['requests'] = true;
            $this->requests = $value['requests'];
            unset($value['requests']);
        }

        if (array_key_exists('responses', $value)) {
            $this->_usedProperties['responses'] = true;
            $this->responses = $value['responses'];
            unset($value['responses']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['requests'])) {
            $output['requests'] = $this->requests;
        }
        if (isset($this->_usedProperties['responses'])) {
            $output['responses'] = $this->responses;
        }

        return $output;
    }

}
