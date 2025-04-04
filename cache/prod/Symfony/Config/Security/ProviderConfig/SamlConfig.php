<?php

namespace Symfony\Config\Security\ProviderConfig;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class SamlConfig 
{
    private $userClass;
    private $defaultRoles;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function userClass($value): static
    {
        $this->_usedProperties['userClass'] = true;
        $this->userClass = $value;

        return $this;
    }

    /**
     * @param ParamConfigurator|list<ParamConfigurator|mixed> $value
     *
     * @return $this
     */
    public function defaultRoles(ParamConfigurator|array $value): static
    {
        $this->_usedProperties['defaultRoles'] = true;
        $this->defaultRoles = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('user_class', $value)) {
            $this->_usedProperties['userClass'] = true;
            $this->userClass = $value['user_class'];
            unset($value['user_class']);
        }

        if (array_key_exists('default_roles', $value)) {
            $this->_usedProperties['defaultRoles'] = true;
            $this->defaultRoles = $value['default_roles'];
            unset($value['default_roles']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['userClass'])) {
            $output['user_class'] = $this->userClass;
        }
        if (isset($this->_usedProperties['defaultRoles'])) {
            $output['default_roles'] = $this->defaultRoles;
        }

        return $output;
    }

}
