<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingService;

require_once __DIR__.\DIRECTORY_SEPARATOR.'RequestedAttributesConfig'.\DIRECTORY_SEPARATOR.'AttributeValueConfig.php';

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class RequestedAttributesConfig 
{
    private $name;
    private $isRequired;
    private $nameFormat;
    private $friendlyName;
    private $attributeValue;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function name($value): static
    {
        $this->_usedProperties['name'] = true;
        $this->name = $value;

        return $this;
    }

    /**
     * @default false
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function isRequired($value): static
    {
        $this->_usedProperties['isRequired'] = true;
        $this->isRequired = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function nameFormat($value): static
    {
        $this->_usedProperties['nameFormat'] = true;
        $this->nameFormat = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function friendlyName($value): static
    {
        $this->_usedProperties['friendlyName'] = true;
        $this->friendlyName = $value;

        return $this;
    }

    public function attributeValue(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingService\RequestedAttributesConfig\AttributeValueConfig
    {
        if (null === $this->attributeValue) {
            $this->_usedProperties['attributeValue'] = true;
            $this->attributeValue = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingService\RequestedAttributesConfig\AttributeValueConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "attributeValue()" has already been initialized. You cannot pass values the second time you call attributeValue().');
        }

        return $this->attributeValue;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('name', $value)) {
            $this->_usedProperties['name'] = true;
            $this->name = $value['name'];
            unset($value['name']);
        }

        if (array_key_exists('isRequired', $value)) {
            $this->_usedProperties['isRequired'] = true;
            $this->isRequired = $value['isRequired'];
            unset($value['isRequired']);
        }

        if (array_key_exists('nameFormat', $value)) {
            $this->_usedProperties['nameFormat'] = true;
            $this->nameFormat = $value['nameFormat'];
            unset($value['nameFormat']);
        }

        if (array_key_exists('friendlyName', $value)) {
            $this->_usedProperties['friendlyName'] = true;
            $this->friendlyName = $value['friendlyName'];
            unset($value['friendlyName']);
        }

        if (array_key_exists('attributeValue', $value)) {
            $this->_usedProperties['attributeValue'] = true;
            $this->attributeValue = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingService\RequestedAttributesConfig\AttributeValueConfig($value['attributeValue']);
            unset($value['attributeValue']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['name'])) {
            $output['name'] = $this->name;
        }
        if (isset($this->_usedProperties['isRequired'])) {
            $output['isRequired'] = $this->isRequired;
        }
        if (isset($this->_usedProperties['nameFormat'])) {
            $output['nameFormat'] = $this->nameFormat;
        }
        if (isset($this->_usedProperties['friendlyName'])) {
            $output['friendlyName'] = $this->friendlyName;
        }
        if (isset($this->_usedProperties['attributeValue'])) {
            $output['attributeValue'] = $this->attributeValue->toArray();
        }

        return $output;
    }

}
