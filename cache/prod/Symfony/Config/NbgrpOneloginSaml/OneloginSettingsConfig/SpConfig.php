<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig;

require_once __DIR__.\DIRECTORY_SEPARATOR.'Sp'.\DIRECTORY_SEPARATOR.'AssertionConsumerServiceConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'Sp'.\DIRECTORY_SEPARATOR.'AttributeConsumingServiceConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'Sp'.\DIRECTORY_SEPARATOR.'SingleLogoutServiceConfig.php';

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class SpConfig 
{
    private $entityId;
    private $assertionConsumerService;
    private $attributeConsumingService;
    private $singleLogoutService;
    private $nameIDFormat;
    private $x509cert;
    private $privateKey;
    private $x509certNew;
    private $_usedProperties = [];

    /**
     * @default '<request_scheme_and_host>/saml/metadata'
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function entityId($value): static
    {
        $this->_usedProperties['entityId'] = true;
        $this->entityId = $value;

        return $this;
    }

    /**
     * @default {"url":"<request_scheme_and_host>\/saml\/acs"}
    */
    public function assertionConsumerService(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AssertionConsumerServiceConfig
    {
        if (null === $this->assertionConsumerService) {
            $this->_usedProperties['assertionConsumerService'] = true;
            $this->assertionConsumerService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AssertionConsumerServiceConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "assertionConsumerService()" has already been initialized. You cannot pass values the second time you call assertionConsumerService().');
        }

        return $this->assertionConsumerService;
    }

    public function attributeConsumingService(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingServiceConfig
    {
        if (null === $this->attributeConsumingService) {
            $this->_usedProperties['attributeConsumingService'] = true;
            $this->attributeConsumingService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingServiceConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "attributeConsumingService()" has already been initialized. You cannot pass values the second time you call attributeConsumingService().');
        }

        return $this->attributeConsumingService;
    }

    /**
     * @default {"url":"<request_scheme_and_host>\/saml\/logout"}
    */
    public function singleLogoutService(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\SingleLogoutServiceConfig
    {
        if (null === $this->singleLogoutService) {
            $this->_usedProperties['singleLogoutService'] = true;
            $this->singleLogoutService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\SingleLogoutServiceConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "singleLogoutService()" has already been initialized. You cannot pass values the second time you call singleLogoutService().');
        }

        return $this->singleLogoutService;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function nameIDFormat($value): static
    {
        $this->_usedProperties['nameIDFormat'] = true;
        $this->nameIDFormat = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function x509cert($value): static
    {
        $this->_usedProperties['x509cert'] = true;
        $this->x509cert = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function privateKey($value): static
    {
        $this->_usedProperties['privateKey'] = true;
        $this->privateKey = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function x509certNew($value): static
    {
        $this->_usedProperties['x509certNew'] = true;
        $this->x509certNew = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('entityId', $value)) {
            $this->_usedProperties['entityId'] = true;
            $this->entityId = $value['entityId'];
            unset($value['entityId']);
        }

        if (array_key_exists('assertionConsumerService', $value)) {
            $this->_usedProperties['assertionConsumerService'] = true;
            $this->assertionConsumerService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AssertionConsumerServiceConfig($value['assertionConsumerService']);
            unset($value['assertionConsumerService']);
        }

        if (array_key_exists('attributeConsumingService', $value)) {
            $this->_usedProperties['attributeConsumingService'] = true;
            $this->attributeConsumingService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\AttributeConsumingServiceConfig($value['attributeConsumingService']);
            unset($value['attributeConsumingService']);
        }

        if (array_key_exists('singleLogoutService', $value)) {
            $this->_usedProperties['singleLogoutService'] = true;
            $this->singleLogoutService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Sp\SingleLogoutServiceConfig($value['singleLogoutService']);
            unset($value['singleLogoutService']);
        }

        if (array_key_exists('NameIDFormat', $value)) {
            $this->_usedProperties['nameIDFormat'] = true;
            $this->nameIDFormat = $value['NameIDFormat'];
            unset($value['NameIDFormat']);
        }

        if (array_key_exists('x509cert', $value)) {
            $this->_usedProperties['x509cert'] = true;
            $this->x509cert = $value['x509cert'];
            unset($value['x509cert']);
        }

        if (array_key_exists('privateKey', $value)) {
            $this->_usedProperties['privateKey'] = true;
            $this->privateKey = $value['privateKey'];
            unset($value['privateKey']);
        }

        if (array_key_exists('x509certNew', $value)) {
            $this->_usedProperties['x509certNew'] = true;
            $this->x509certNew = $value['x509certNew'];
            unset($value['x509certNew']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['entityId'])) {
            $output['entityId'] = $this->entityId;
        }
        if (isset($this->_usedProperties['assertionConsumerService'])) {
            $output['assertionConsumerService'] = $this->assertionConsumerService->toArray();
        }
        if (isset($this->_usedProperties['attributeConsumingService'])) {
            $output['attributeConsumingService'] = $this->attributeConsumingService->toArray();
        }
        if (isset($this->_usedProperties['singleLogoutService'])) {
            $output['singleLogoutService'] = $this->singleLogoutService->toArray();
        }
        if (isset($this->_usedProperties['nameIDFormat'])) {
            $output['NameIDFormat'] = $this->nameIDFormat;
        }
        if (isset($this->_usedProperties['x509cert'])) {
            $output['x509cert'] = $this->x509cert;
        }
        if (isset($this->_usedProperties['privateKey'])) {
            $output['privateKey'] = $this->privateKey;
        }
        if (isset($this->_usedProperties['x509certNew'])) {
            $output['x509certNew'] = $this->x509certNew;
        }

        return $output;
    }

}
