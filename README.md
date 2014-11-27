# network_facts

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with network_facts](#setup)
    * [What network_facts affects](#what-network_facts-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with network_facts](#beginning-with-network_facts)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This provides a custom fact which provides your node's public IP address, as seen from The Internet

## Module Description

This fact was originally part of the (puppet-network)[https://github.com/puppet-community/puppet-network] module. It was removed to provide consumers of the module the option of utilizing this fact or not.

## Setup

### What network_facts affects

* Every node will connect to http://ip-echo.appspot.com to determine its' public address from an outside service. This is backended by the code found [here](https://github.com/jcsalterego/ip-echo).

## Usage

Simply install the module. Pluginsync will deploy the fact to all your nodes.

## Reference

 * network_public_ip *fact* This conveys your public IP address

## Limitations

In order for this to function, your nodes will need to be able to make outbound requests to The Internet on tcp:80

## Development

To contribute changes, Please:

  * Fork the module
  * Create an issue conveying the idea of your change against this module
  * Push your changes to a topic branch on your fork
  * Submit a pull request from your fork/topic branch against the master branch of this repo

## Release Notes/Contributors/Etc **Optional**

 * 1.0.0 11/27/2014 Initial release of extracted fact
