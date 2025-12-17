<?php

namespace Symfony\Config\NbgrpOneloginSaml\OneloginSettingsConfig;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class SecurityConfig 
{
    private $nameIdEncrypted;
    private $authnRequestsSigned;
    private $logoutRequestSigned;
    private $logoutResponseSigned;
    private $signMetadata;
    private $wantMessagesSigned;
    private $wantAssertionsEncrypted;
    private $wantAssertionsSigned;
    private $wantNameId;
    private $wantNameIdEncrypted;
    private $requestedAuthnContext;
    private $wantXMLValidation;
    private $relaxDestinationValidation;
    private $destinationStrictlyMatches;
    private $allowRepeatAttributeName;
    private $rejectUnsolicitedResponsesWithInResponseTo;
    private $signatureAlgorithm;
    private $digestAlgorithm;
    private $encryptionAlgorithm;
    private $lowercaseUrlencoding;
    private $_usedProperties = [];

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function nameIdEncrypted($value): static
    {
        $this->_usedProperties['nameIdEncrypted'] = true;
        $this->nameIdEncrypted = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function authnRequestsSigned($value): static
    {
        $this->_usedProperties['authnRequestsSigned'] = true;
        $this->authnRequestsSigned = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function logoutRequestSigned($value): static
    {
        $this->_usedProperties['logoutRequestSigned'] = true;
        $this->logoutRequestSigned = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function logoutResponseSigned($value): static
    {
        $this->_usedProperties['logoutResponseSigned'] = true;
        $this->logoutResponseSigned = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function signMetadata($value): static
    {
        $this->_usedProperties['signMetadata'] = true;
        $this->signMetadata = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function wantMessagesSigned($value): static
    {
        $this->_usedProperties['wantMessagesSigned'] = true;
        $this->wantMessagesSigned = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function wantAssertionsEncrypted($value): static
    {
        $this->_usedProperties['wantAssertionsEncrypted'] = true;
        $this->wantAssertionsEncrypted = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function wantAssertionsSigned($value): static
    {
        $this->_usedProperties['wantAssertionsSigned'] = true;
        $this->wantAssertionsSigned = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function wantNameId($value): static
    {
        $this->_usedProperties['wantNameId'] = true;
        $this->wantNameId = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function wantNameIdEncrypted($value): static
    {
        $this->_usedProperties['wantNameIdEncrypted'] = true;
        $this->wantNameIdEncrypted = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     *
     * @return $this
     */
    public function requestedAuthnContext(mixed $value): static
    {
        $this->_usedProperties['requestedAuthnContext'] = true;
        $this->requestedAuthnContext = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function wantXMLValidation($value): static
    {
        $this->_usedProperties['wantXMLValidation'] = true;
        $this->wantXMLValidation = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function relaxDestinationValidation($value): static
    {
        $this->_usedProperties['relaxDestinationValidation'] = true;
        $this->relaxDestinationValidation = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function destinationStrictlyMatches($value): static
    {
        $this->_usedProperties['destinationStrictlyMatches'] = true;
        $this->destinationStrictlyMatches = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function allowRepeatAttributeName($value): static
    {
        $this->_usedProperties['allowRepeatAttributeName'] = true;
        $this->allowRepeatAttributeName = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function rejectUnsolicitedResponsesWithInResponseTo($value): static
    {
        $this->_usedProperties['rejectUnsolicitedResponsesWithInResponseTo'] = true;
        $this->rejectUnsolicitedResponsesWithInResponseTo = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|'http://www.w3.org/2000/09/xmldsig#rsa-sha1'|'http://www.w3.org/2000/09/xmldsig#dsa-sha1'|'http://www.w3.org/2001/04/xmldsig-more#rsa-sha256'|'http://www.w3.org/2001/04/xmldsig-more#rsa-sha384'|'http://www.w3.org/2001/04/xmldsig-more#rsa-sha512' $value
     * @return $this
     */
    public function signatureAlgorithm($value): static
    {
        $this->_usedProperties['signatureAlgorithm'] = true;
        $this->signatureAlgorithm = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|'http://www.w3.org/2000/09/xmldsig#sha1'|'http://www.w3.org/2001/04/xmlenc#sha256'|'http://www.w3.org/2001/04/xmldsig-more#sha384'|'http://www.w3.org/2001/04/xmlenc#sha512' $value
     * @return $this
     */
    public function digestAlgorithm($value): static
    {
        $this->_usedProperties['digestAlgorithm'] = true;
        $this->digestAlgorithm = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|'http://www.w3.org/2001/04/xmlenc#tripledes-cbc'|'http://www.w3.org/2001/04/xmlenc#aes128-cbc'|'http://www.w3.org/2001/04/xmlenc#aes192-cbc'|'http://www.w3.org/2001/04/xmlenc#aes256-cbc'|'http://www.w3.org/2009/xmlenc11#aes128-gcm'|'http://www.w3.org/2009/xmlenc11#aes192-gcm'|'http://www.w3.org/2009/xmlenc11#aes256-gcm' $value
     * @return $this
     */
    public function encryptionAlgorithm($value): static
    {
        $this->_usedProperties['encryptionAlgorithm'] = true;
        $this->encryptionAlgorithm = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|bool $value
     * @return $this
     */
    public function lowercaseUrlencoding($value): static
    {
        $this->_usedProperties['lowercaseUrlencoding'] = true;
        $this->lowercaseUrlencoding = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('nameIdEncrypted', $value)) {
            $this->_usedProperties['nameIdEncrypted'] = true;
            $this->nameIdEncrypted = $value['nameIdEncrypted'];
            unset($value['nameIdEncrypted']);
        }

        if (array_key_exists('authnRequestsSigned', $value)) {
            $this->_usedProperties['authnRequestsSigned'] = true;
            $this->authnRequestsSigned = $value['authnRequestsSigned'];
            unset($value['authnRequestsSigned']);
        }

        if (array_key_exists('logoutRequestSigned', $value)) {
            $this->_usedProperties['logoutRequestSigned'] = true;
            $this->logoutRequestSigned = $value['logoutRequestSigned'];
            unset($value['logoutRequestSigned']);
        }

        if (array_key_exists('logoutResponseSigned', $value)) {
            $this->_usedProperties['logoutResponseSigned'] = true;
            $this->logoutResponseSigned = $value['logoutResponseSigned'];
            unset($value['logoutResponseSigned']);
        }

        if (array_key_exists('signMetadata', $value)) {
            $this->_usedProperties['signMetadata'] = true;
            $this->signMetadata = $value['signMetadata'];
            unset($value['signMetadata']);
        }

        if (array_key_exists('wantMessagesSigned', $value)) {
            $this->_usedProperties['wantMessagesSigned'] = true;
            $this->wantMessagesSigned = $value['wantMessagesSigned'];
            unset($value['wantMessagesSigned']);
        }

        if (array_key_exists('wantAssertionsEncrypted', $value)) {
            $this->_usedProperties['wantAssertionsEncrypted'] = true;
            $this->wantAssertionsEncrypted = $value['wantAssertionsEncrypted'];
            unset($value['wantAssertionsEncrypted']);
        }

        if (array_key_exists('wantAssertionsSigned', $value)) {
            $this->_usedProperties['wantAssertionsSigned'] = true;
            $this->wantAssertionsSigned = $value['wantAssertionsSigned'];
            unset($value['wantAssertionsSigned']);
        }

        if (array_key_exists('wantNameId', $value)) {
            $this->_usedProperties['wantNameId'] = true;
            $this->wantNameId = $value['wantNameId'];
            unset($value['wantNameId']);
        }

        if (array_key_exists('wantNameIdEncrypted', $value)) {
            $this->_usedProperties['wantNameIdEncrypted'] = true;
            $this->wantNameIdEncrypted = $value['wantNameIdEncrypted'];
            unset($value['wantNameIdEncrypted']);
        }

        if (array_key_exists('requestedAuthnContext', $value)) {
            $this->_usedProperties['requestedAuthnContext'] = true;
            $this->requestedAuthnContext = $value['requestedAuthnContext'];
            unset($value['requestedAuthnContext']);
        }

        if (array_key_exists('wantXMLValidation', $value)) {
            $this->_usedProperties['wantXMLValidation'] = true;
            $this->wantXMLValidation = $value['wantXMLValidation'];
            unset($value['wantXMLValidation']);
        }

        if (array_key_exists('relaxDestinationValidation', $value)) {
            $this->_usedProperties['relaxDestinationValidation'] = true;
            $this->relaxDestinationValidation = $value['relaxDestinationValidation'];
            unset($value['relaxDestinationValidation']);
        }

        if (array_key_exists('destinationStrictlyMatches', $value)) {
            $this->_usedProperties['destinationStrictlyMatches'] = true;
            $this->destinationStrictlyMatches = $value['destinationStrictlyMatches'];
            unset($value['destinationStrictlyMatches']);
        }

        if (array_key_exists('allowRepeatAttributeName', $value)) {
            $this->_usedProperties['allowRepeatAttributeName'] = true;
            $this->allowRepeatAttributeName = $value['allowRepeatAttributeName'];
            unset($value['allowRepeatAttributeName']);
        }

        if (array_key_exists('rejectUnsolicitedResponsesWithInResponseTo', $value)) {
            $this->_usedProperties['rejectUnsolicitedResponsesWithInResponseTo'] = true;
            $this->rejectUnsolicitedResponsesWithInResponseTo = $value['rejectUnsolicitedResponsesWithInResponseTo'];
            unset($value['rejectUnsolicitedResponsesWithInResponseTo']);
        }

        if (array_key_exists('signatureAlgorithm', $value)) {
            $this->_usedProperties['signatureAlgorithm'] = true;
            $this->signatureAlgorithm = $value['signatureAlgorithm'];
            unset($value['signatureAlgorithm']);
        }

        if (array_key_exists('digestAlgorithm', $value)) {
            $this->_usedProperties['digestAlgorithm'] = true;
            $this->digestAlgorithm = $value['digestAlgorithm'];
            unset($value['digestAlgorithm']);
        }

        if (array_key_exists('encryption_algorithm', $value)) {
            $this->_usedProperties['encryptionAlgorithm'] = true;
            $this->encryptionAlgorithm = $value['encryption_algorithm'];
            unset($value['encryption_algorithm']);
        }

        if (array_key_exists('lowercaseUrlencoding', $value)) {
            $this->_usedProperties['lowercaseUrlencoding'] = true;
            $this->lowercaseUrlencoding = $value['lowercaseUrlencoding'];
            unset($value['lowercaseUrlencoding']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['nameIdEncrypted'])) {
            $output['nameIdEncrypted'] = $this->nameIdEncrypted;
        }
        if (isset($this->_usedProperties['authnRequestsSigned'])) {
            $output['authnRequestsSigned'] = $this->authnRequestsSigned;
        }
        if (isset($this->_usedProperties['logoutRequestSigned'])) {
            $output['logoutRequestSigned'] = $this->logoutRequestSigned;
        }
        if (isset($this->_usedProperties['logoutResponseSigned'])) {
            $output['logoutResponseSigned'] = $this->logoutResponseSigned;
        }
        if (isset($this->_usedProperties['signMetadata'])) {
            $output['signMetadata'] = $this->signMetadata;
        }
        if (isset($this->_usedProperties['wantMessagesSigned'])) {
            $output['wantMessagesSigned'] = $this->wantMessagesSigned;
        }
        if (isset($this->_usedProperties['wantAssertionsEncrypted'])) {
            $output['wantAssertionsEncrypted'] = $this->wantAssertionsEncrypted;
        }
        if (isset($this->_usedProperties['wantAssertionsSigned'])) {
            $output['wantAssertionsSigned'] = $this->wantAssertionsSigned;
        }
        if (isset($this->_usedProperties['wantNameId'])) {
            $output['wantNameId'] = $this->wantNameId;
        }
        if (isset($this->_usedProperties['wantNameIdEncrypted'])) {
            $output['wantNameIdEncrypted'] = $this->wantNameIdEncrypted;
        }
        if (isset($this->_usedProperties['requestedAuthnContext'])) {
            $output['requestedAuthnContext'] = $this->requestedAuthnContext;
        }
        if (isset($this->_usedProperties['wantXMLValidation'])) {
            $output['wantXMLValidation'] = $this->wantXMLValidation;
        }
        if (isset($this->_usedProperties['relaxDestinationValidation'])) {
            $output['relaxDestinationValidation'] = $this->relaxDestinationValidation;
        }
        if (isset($this->_usedProperties['destinationStrictlyMatches'])) {
            $output['destinationStrictlyMatches'] = $this->destinationStrictlyMatches;
        }
        if (isset($this->_usedProperties['allowRepeatAttributeName'])) {
            $output['allowRepeatAttributeName'] = $this->allowRepeatAttributeName;
        }
        if (isset($this->_usedProperties['rejectUnsolicitedResponsesWithInResponseTo'])) {
            $output['rejectUnsolicitedResponsesWithInResponseTo'] = $this->rejectUnsolicitedResponsesWithInResponseTo;
        }
        if (isset($this->_usedProperties['signatureAlgorithm'])) {
            $output['signatureAlgorithm'] = $this->signatureAlgorithm;
        }
        if (isset($this->_usedProperties['digestAlgorithm'])) {
            $output['digestAlgorithm'] = $this->digestAlgorithm;
        }
        if (isset($this->_usedProperties['encryptionAlgorithm'])) {
            $output['encryption_algorithm'] = $this->encryptionAlgorithm;
        }
        if (isset($this->_usedProperties['lowercaseUrlencoding'])) {
            $output['lowercaseUrlencoding'] = $this->lowercaseUrlencoding;
        }

        return $output;
    }

}
