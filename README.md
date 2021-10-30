# ffghost-device
Make Safe Techathon 2021

# Balena
Balena is a cloud device management service used to manage the Raspberry Pis used in this project.

Install Balina CLI

https://github.com/balena-io/balena-cli/blob/master/INSTALL-MAC.md

## Logging In
Before using Balena, you will have to log in locally:

```
balena login
```

## Cloud Deploy
You can deploy changes made to the gateway device by pushing your changes using the ./publish.sh shell script, or calling it's contents directly.

## Local Deploy
https://www.balena.io/docs/learn/develop/local-mode/

First scan for the device via:

```
sudo balena scan
```

Then copy the host and use it for the following:

Example:

```
balena push 3515679.local
```
