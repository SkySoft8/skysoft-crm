<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPerson;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class AdministrativeConfig 
{
    private $givenName;
    private $emailAddress;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function givenName($value): static
    {
        $this->_usedProperties['givenName'] = true;
        $this->givenName = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function emailAddress($value): static
    {
        $this->_usedProperties['emailAddress'] = true;
        $this->emailAddress = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('givenName', $value)) {
            $this->_usedProperties['givenName'] = true;
            $this->givenName = $value['givenName'];
            unset($value['givenName']);
        }

        if (array_key_exists('emailAddress', $value)) {
            $this->_usedProperties['emailAddress'] = true;
            $this->emailAddress = $value['emailAddress'];
            unset($value['emailAddress']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['givenName'])) {
            $output['givenName'] = $this->givenName;
        }
        if (isset($this->_usedProperties['emailAddress'])) {
            $output['emailAddress'] = $this->emailAddress;
        }

        return $output;
    }

}
