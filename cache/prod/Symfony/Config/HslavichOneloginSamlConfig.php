<?php

namespace Symfony\Config;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class HslavichOneloginSamlConfig implements \Symfony\Component\Config\Builder\ConfigBuilderInterface
{
    private $baseurl;
    private $entityManagerName;
    private $strict;
    private $debug;
    private $idp;
    private $sp;
    private $security;
    private $contactPerson;
    private $organization;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function baseurl(mixed $value = NULL): static
    {
        $this->_usedProperties['baseurl'] = true;
        $this->baseurl = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function entityManagerName(mixed $value = NULL): static
    {
        $this->_usedProperties['entityManagerName'] = true;
        $this->entityManagerName = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function strict(mixed $value = NULL): static
    {
        $this->_usedProperties['strict'] = true;
        $this->strict = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function debug(mixed $value = NULL): static
    {
        $this->_usedProperties['debug'] = true;
        $this->debug = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function idp(mixed $value = NULL): static
    {
        $this->_usedProperties['idp'] = true;
        $this->idp = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function sp(mixed $value = NULL): static
    {
        $this->_usedProperties['sp'] = true;
        $this->sp = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function security(mixed $value = NULL): static
    {
        $this->_usedProperties['security'] = true;
        $this->security = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function contactPerson(mixed $value = NULL): static
    {
        $this->_usedProperties['contactPerson'] = true;
        $this->contactPerson = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function organization(mixed $value = NULL): static
    {
        $this->_usedProperties['organization'] = true;
        $this->organization = $value;

        return $this;
    }

    public function getExtensionAlias(): string
    {
        return 'hslavich_onelogin_saml';
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('baseurl', $value)) {
            $this->_usedProperties['baseurl'] = true;
            $this->baseurl = $value['baseurl'];
            unset($value['baseurl']);
        }

        if (array_key_exists('entityManagerName', $value)) {
            $this->_usedProperties['entityManagerName'] = true;
            $this->entityManagerName = $value['entityManagerName'];
            unset($value['entityManagerName']);
        }

        if (array_key_exists('strict', $value)) {
            $this->_usedProperties['strict'] = true;
            $this->strict = $value['strict'];
            unset($value['strict']);
        }

        if (array_key_exists('debug', $value)) {
            $this->_usedProperties['debug'] = true;
            $this->debug = $value['debug'];
            unset($value['debug']);
        }

        if (array_key_exists('idp', $value)) {
            $this->_usedProperties['idp'] = true;
            $this->idp = $value['idp'];
            unset($value['idp']);
        }

        if (array_key_exists('sp', $value)) {
            $this->_usedProperties['sp'] = true;
            $this->sp = $value['sp'];
            unset($value['sp']);
        }

        if (array_key_exists('security', $value)) {
            $this->_usedProperties['security'] = true;
            $this->security = $value['security'];
            unset($value['security']);
        }

        if (array_key_exists('contactPerson', $value)) {
            $this->_usedProperties['contactPerson'] = true;
            $this->contactPerson = $value['contactPerson'];
            unset($value['contactPerson']);
        }

        if (array_key_exists('organization', $value)) {
            $this->_usedProperties['organization'] = true;
            $this->organization = $value['organization'];
            unset($value['organization']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['baseurl'])) {
            $output['baseurl'] = $this->baseurl;
        }
        if (isset($this->_usedProperties['entityManagerName'])) {
            $output['entityManagerName'] = $this->entityManagerName;
        }
        if (isset($this->_usedProperties['strict'])) {
            $output['strict'] = $this->strict;
        }
        if (isset($this->_usedProperties['debug'])) {
            $output['debug'] = $this->debug;
        }
        if (isset($this->_usedProperties['idp'])) {
            $output['idp'] = $this->idp;
        }
        if (isset($this->_usedProperties['sp'])) {
            $output['sp'] = $this->sp;
        }
        if (isset($this->_usedProperties['security'])) {
            $output['security'] = $this->security;
        }
        if (isset($this->_usedProperties['contactPerson'])) {
            $output['contactPerson'] = $this->contactPerson;
        }
        if (isset($this->_usedProperties['organization'])) {
            $output['organization'] = $this->organization;
        }

        return $output;
    }

}
