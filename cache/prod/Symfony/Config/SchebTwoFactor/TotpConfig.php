<?php

namespace Symfony\Config\SchebTwoFactor;

use Symfony\Component\Config\Loader\ParamConfigurator;
use Symfony\Component\Config\Definition\Exception\InvalidConfigurationException;

/**
 * This class is automatically generated to help in creating a config.
 */
class TotpConfig 
{
    private $enabled;
    private $formRenderer;
    private $issuer;
    private $serverName;
    private $window;
    private $leeway;
    private $parameters;
    private $template;
    private $_usedProperties = [];

    /**
     * @default false
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function enabled($value): static
    {
        $this->_usedProperties['enabled'] = true;
        $this->enabled = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function formRenderer($value): static
    {
        $this->_usedProperties['formRenderer'] = true;
        $this->formRenderer = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function issuer($value): static
    {
        $this->_usedProperties['issuer'] = true;
        $this->issuer = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function serverName($value): static
    {
        $this->_usedProperties['serverName'] = true;
        $this->serverName = $value;

        return $this;
    }

    /**
     * @default 1
     * @param ParamConfigurator|int $value
     * @deprecated The "totp.window" option is deprecated. Use "leeway" instead, which requires spomky-labs/otphp v11 to be used.
     * @return $this
     */
    public function window($value): static
    {
        $this->_usedProperties['window'] = true;
        $this->window = $value;

        return $this;
    }

    /**
     * @default null
     * @param ParamConfigurator|int $value
     * @return $this
     */
    public function leeway($value): static
    {
        $this->_usedProperties['leeway'] = true;
        $this->leeway = $value;

        return $this;
    }

    /**
     * @param ParamConfigurator|list<ParamConfigurator|mixed> $value
     *
     * @return $this
     */
    public function parameters(ParamConfigurator|array $value): static
    {
        $this->_usedProperties['parameters'] = true;
        $this->parameters = $value;

        return $this;
    }

    /**
     * @default '@SchebTwoFactor/Authentication/form.html.twig'
     * @param ParamConfigurator|mixed $value
     * @return $this
     */
    public function template($value): static
    {
        $this->_usedProperties['template'] = true;
        $this->template = $value;

        return $this;
    }

    public function __construct(array $value = [])
    {
        if (array_key_exists('enabled', $value)) {
            $this->_usedProperties['enabled'] = true;
            $this->enabled = $value['enabled'];
            unset($value['enabled']);
        }

        if (array_key_exists('form_renderer', $value)) {
            $this->_usedProperties['formRenderer'] = true;
            $this->formRenderer = $value['form_renderer'];
            unset($value['form_renderer']);
        }

        if (array_key_exists('issuer', $value)) {
            $this->_usedProperties['issuer'] = true;
            $this->issuer = $value['issuer'];
            unset($value['issuer']);
        }

        if (array_key_exists('server_name', $value)) {
            $this->_usedProperties['serverName'] = true;
            $this->serverName = $value['server_name'];
            unset($value['server_name']);
        }

        if (array_key_exists('window', $value)) {
            $this->_usedProperties['window'] = true;
            $this->window = $value['window'];
            unset($value['window']);
        }

        if (array_key_exists('leeway', $value)) {
            $this->_usedProperties['leeway'] = true;
            $this->leeway = $value['leeway'];
            unset($value['leeway']);
        }

        if (array_key_exists('parameters', $value)) {
            $this->_usedProperties['parameters'] = true;
            $this->parameters = $value['parameters'];
            unset($value['parameters']);
        }

        if (array_key_exists('template', $value)) {
            $this->_usedProperties['template'] = true;
            $this->template = $value['template'];
            unset($value['template']);
        }

        if ([] !== $value) {
            throw new InvalidConfigurationException(sprintf('The following keys are not supported by "%s": ', __CLASS__).implode(', ', array_keys($value)));
        }
    }

    public function toArray(): array
    {
        $output = [];
        if (isset($this->_usedProperties['enabled'])) {
            $output['enabled'] = $this->enabled;
        }
        if (isset($this->_usedProperties['formRenderer'])) {
            $output['form_renderer'] = $this->formRenderer;
        }
        if (isset($this->_usedProperties['issuer'])) {
            $output['issuer'] = $this->issuer;
        }
        if (isset($this->_usedProperties['serverName'])) {
            $output['server_name'] = $this->serverName;
        }
        if (isset($this->_usedProperties['window'])) {
            $output['window'] = $this->window;
        }
        if (isset($this->_usedProperties['leeway'])) {
            $output['leeway'] = $this->leeway;
        }
        if (isset($this->_usedProperties['parameters'])) {
            $output['parameters'] = $this->parameters;
        }
        if (isset($this->_usedProperties['template'])) {
            $output['template'] = $this->template;
        }

        return $output;
    }

}
