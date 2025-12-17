<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp;

require_once __DIR__.\DIRECTORY_SEPARATOR.'AttributeConsumingService'.\DIRECTORY_SEPARATOR.'RequestedAttributesConfig.php';

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class AttributeConsumingServiceConfig 
{
    private $serviceName;
    private $serviceDescription;
    private $requestedAttributes;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function serviceName($value): static
    {
        $this->_usedProperties['serviceName'] = true;
        $this->serviceName = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function serviceDescription($value): static
    {
        $this->_usedProperties['serviceDescription'] = true;
        $this->serviceDescription = $value;

        return $this;
    }

    public function requestedAttributes(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingService\RequestedAttributesConfig
    {
        $this->_usedProperties['requestedAttributes'] = true;

        return $this->requestedAttributes[] = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingService\RequestedAttributesConfig($value);
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('serviceName', $value)) {
            $this->_usedProperties['serviceName'] = true;
            $this->serviceName = $value['serviceName'];
            unset($value['serviceName']);
        }

        if (array_key_exists('serviceDescription', $value)) {
            $this->_usedProperties['serviceDescription'] = true;
            $this->serviceDescription = $value['serviceDescription'];
            unset($value['serviceDescription']);
        }

        if (array_key_exists('requestedAttributes', $value)) {
            $this->_usedProperties['requestedAttributes'] = true;
            $this->requestedAttributes = array_map(fn ($v) => new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingService\RequestedAttributesConfig($v), $value['requestedAttributes']);
            unset($value['requestedAttributes']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['serviceName'])) {
            $output['serviceName'] = $this->serviceName;
        }
        if (isset($this->_usedProperties['serviceDescription'])) {
            $output['serviceDescription'] = $this->serviceDescription;
        }
        if (isset($this->_usedProperties['requestedAttributes'])) {
            $output['requestedAttributes'] = array_map(fn ($v) => $v->toArray(), $this->requestedAttributes);
        }

        return $output;
    }

}
