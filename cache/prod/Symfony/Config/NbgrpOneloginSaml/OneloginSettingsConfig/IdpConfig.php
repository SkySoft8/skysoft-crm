<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig;

require_once __DIR__.\DIRECTORY_SEPARATOR.'Idp'.\DIRECTORY_SEPARATOR.'SingleSignOnServiceConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'Idp'.\DIRECTORY_SEPARATOR.'SingleLogoutServiceConfig.php';
require_once __DIR__.\DIRECTORY_SEPARATOR.'Idp'.\DIRECTORY_SEPARATOR.'X509certMultiConfig.php';

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class IdpConfig 
{
    private $entityId;
    private $singleSignOnService;
    private $singleLogoutService;
    private $x509cert;
    private $certFingerprint;
    private $certFingerprintAlgorithm;
    private $x509certMulti;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function entityId($value): static
    {
        $this->_usedProperties['entityId'] = true;
        $this->entityId = $value;

        return $this;
    }

    public function singleSignOnService(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\SingleSignOnServiceConfig
    {
        if (null === $this->singleSignOnService) {
            $this->_usedProperties['singleSignOnService'] = true;
            $this->singleSignOnService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\SingleSignOnServiceConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "singleSignOnService()" has already been initialized. You cannot pass values the second time you call singleSignOnService().');
        }

        return $this->singleSignOnService;
    }

    public function singleLogoutService(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\SingleLogoutServiceConfig
    {
        if (null === $this->singleLogoutService) {
            $this->_usedProperties['singleLogoutService'] = true;
            $this->singleLogoutService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\SingleLogoutServiceConfig($value);
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
    public function certFingerprint($value): static
    {
        $this->_usedProperties['certFingerprint'] = true;
        $this->certFingerprint = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|'sha1'|'sha256'|'sha384'|'sha512' $value
     * @return $this
     */
    public function certFingerprintAlgorithm($value): static
    {
        $this->_usedProperties['certFingerprintAlgorithm'] = true;
        $this->certFingerprintAlgorithm = $value;

        return $this;
    }

    public function x509certMulti(array $value = []): \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\X509certMultiConfig
    {
        if (null === $this->x509certMulti) {
            $this->_usedProperties['x509certMulti'] = true;
            $this->x509certMulti = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\X509certMultiConfig($value);
        } elseif (0 < \func_num_args()) {
            throw new InvalidConfigurationException('The node created by "x509certMulti()" has already been initialized. You cannot pass values the second time you call x509certMulti().');
        }

        return $this->x509certMulti;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('entityId', $value)) {
            $this->_usedProperties['entityId'] = true;
            $this->entityId = $value['entityId'];
            unset($value['entityId']);
        }

        if (array_key_exists('singleSignOnService', $value)) {
            $this->_usedProperties['singleSignOnService'] = true;
            $this->singleSignOnService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\SingleSignOnServiceConfig($value['singleSignOnService']);
            unset($value['singleSignOnService']);
        }

        if (array_key_exists('singleLogoutService', $value)) {
            $this->_usedProperties['singleLogoutService'] = true;
            $this->singleLogoutService = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\SingleLogoutServiceConfig($value['singleLogoutService']);
            unset($value['singleLogoutService']);
        }

        if (array_key_exists('x509cert', $value)) {
            $this->_usedProperties['x509cert'] = true;
            $this->x509cert = $value['x509cert'];
            unset($value['x509cert']);
        }

        if (array_key_exists('certFingerprint', $value)) {
            $this->_usedProperties['certFingerprint'] = true;
            $this->certFingerprint = $value['certFingerprint'];
            unset($value['certFingerprint']);
        }

        if (array_key_exists('certFingerprintAlgorithm', $value)) {
            $this->_usedProperties['certFingerprintAlgorithm'] = true;
            $this->certFingerprintAlgorithm = $value['certFingerprintAlgorithm'];
            unset($value['certFingerprintAlgorithm']);
        }

        if (array_key_exists('x509certMulti', $value)) {
            $this->_usedProperties['x509certMulti'] = true;
            $this->x509certMulti = new \Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig\Idp\X509certMultiConfig($value['x509certMulti']);
            unset($value['x509certMulti']);
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
        if (isset($this->_usedProperties['singleSignOnService'])) {
            $output['singleSignOnService'] = $this->singleSignOnService->toArray();
        }
        if (isset($this->_usedProperties['singleLogoutService'])) {
            $output['singleLogoutService'] = $this->singleLogoutService->toArray();
        }
        if (isset($this->_usedProperties['x509cert'])) {
            $output['x509cert'] = $this->x509cert;
        }
        if (isset($this->_usedProperties['certFingerprint'])) {
            $output['certFingerprint'] = $this->certFingerprint;
        }
        if (isset($this->_usedProperties['certFingerprintAlgorithm'])) {
            $output['certFingerprintAlgorithm'] = $this->certFingerprintAlgorithm;
        }
        if (isset($this->_usedProperties['x509certMulti'])) {
            $output['x509certMulti'] = $this->x509certMulti->toArray();
        }

        return $output;
    }

}
