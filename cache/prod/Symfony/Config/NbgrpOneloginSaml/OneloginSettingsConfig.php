<?php

namespace Symfony\Config\NbgrpOneloginSaml;

require_once __DIR__.\DIRECTORY_SEPARATOR.'OneloginSettingsConfig'.\DIRECTORY_SEPARATOR.'IdpConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'OneloginSettingsConfig'.\DIRECTORY_SEPARATOR.'SpConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'OneloginSettingsConfig'.\DIRECTORY_SEPARATOR.'CompressConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'OneloginSettingsConfig'.\DIRECTORY_SEPARATOR.'SecurityConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'OneloginSettingsConfig'.\DIRECTORY_SEPARATOR.'ContactPersonConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'OneloginSettingsConfig'.\DIRECTORY_SEPARATOR.'OrganizationConfig.php';

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class OneloginSettingsConfig 
{
    private $baseurl;
    private $strict;
    private $debug;
    private $idp;
    private $sp;
    private $compress;
    private $security;
    private $contactPerson;
    private $organization;
    private $_usedProperties = [];

    /**
     * @default '<request_scheme_and_host>/saml/'
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function baseurl($value): static
    {
        $this->_usedProperties['baseurl'] = true;
        $this->baseurl = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function strict($value): static
    {
        $this->_usedProperties['strict'] = true;
        $this->strict = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function debug($value): static
    {
        $this->_usedProperties['debug'] = true;
        $this->debug = $value;

        return $this;
    }

    public function idp(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\IdpConfig
    {
        if (null === $this->idp) {
            $this->_usedProperties['idp'] = true;
            $this->idp = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\IdpConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "idp()" has already been initialized. You cannot pass values the second time you call idp().');
        }

        return $this->idp;
    }

    /**
     * @default {"entityId":"<request_scheme_and_host>\/saml\/metadata","assertionConsumerService":{"url":"<request_scheme_and_host>\/saml\/acs"},"singleLogoutService":{"url":"<request_scheme_and_host>\/saml\/logout"}}
    */
    public function sp(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\SpConfig
    {
        if (null === $this->sp) {
            $this->_usedProperties['sp'] = true;
            $this->sp = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\SpConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "sp()" has already been initialized. You cannot pass values the second time you call sp().');
        }

        return $this->sp;
    }

    public function compress(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\CompressConfig
    {
        if (null === $this->compress) {
            $this->_usedProperties['compress'] = true;
            $this->compress = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\CompressConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "compress()" has already been initialized. You cannot pass values the second time you call compress().');
        }

        return $this->compress;
    }

    public function security(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\SecurityConfig
    {
        if (null === $this->security) {
            $this->_usedProperties['security'] = true;
            $this->security = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\SecurityConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "security()" has already been initialized. You cannot pass values the second time you call security().');
        }

        return $this->security;
    }

    public function contactPerson(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPersonConfig
    {
        if (null === $this->contactPerson) {
            $this->_usedProperties['contactPerson'] = true;
            $this->contactPerson = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPersonConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "contactPerson()" has already been initialized. You cannot pass values the second time you call contactPerson().');
        }

        return $this->contactPerson;
    }

    public function organization(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\OrganizationConfig
    {
        $this->_usedProperties['organization'] = true;

        return $this->organization[] = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\OrganizationConfig($value);
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('baseurl', $value)) {
            $this->_usedProperties['baseurl'] = true;
            $this->baseurl = $value['baseurl'];
            unset($value['baseurl']);
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
            $this->idp = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\IdpConfig($value['idp']);
            unset($value['idp']);
        }

        if (array_key_exists('sp', $value)) {
            $this->_usedProperties['sp'] = true;
            $this->sp = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\SpConfig($value['sp']);
            unset($value['sp']);
        }

        if (array_key_exists('compress', $value)) {
            $this->_usedProperties['compress'] = true;
            $this->compress = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\CompressConfig($value['compress']);
            unset($value['compress']);
        }

        if (array_key_exists('security', $value)) {
            $this->_usedProperties['security'] = true;
            $this->security = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\SecurityConfig($value['security']);
            unset($value['security']);
        }

        if (array_key_exists('contactPerson', $value)) {
            $this->_usedProperties['contactPerson'] = true;
            $this->contactPerson = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\ContactPersonConfig($value['contactPerson']);
            unset($value['contactPerson']);
        }

        if (array_key_exists('organization', $value)) {
            $this->_usedProperties['organization'] = true;
            $this->organization = array_map(fn ($v) => new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\OrganizationConfig($v), $value['organization']);
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
        if (isset($this->_usedProperties['strict'])) {
            $output['strict'] = $this->strict;
        }
        if (isset($this->_usedProperties['debug'])) {
            $output['debug'] = $this->debug;
        }
        if (isset($this->_usedProperties['idp'])) {
            $output['idp'] = $this->idp->toArray();
        }
        if (isset($this->_usedProperties['sp'])) {
            $output['sp'] = $this->sp->toArray();
        }
        if (isset($this->_usedProperties['compress'])) {
            $output['compress'] = $this->compress->toArray();
        }
        if (isset($this->_usedProperties['security'])) {
            $output['security'] = $this->security->toArray();
        }
        if (isset($this->_usedProperties['contactPerson'])) {
            $output['contactPerson'] = $this->contactPerson->toArray();
        }
        if (isset($this->_usedProperties['organization'])) {
            $output['organization'] = array_map(fn ($v) => $v->toArray(), $this->organization);
        }

        return $output;
    }

}
