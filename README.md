# ffghost-device
Make Safe Techathon 2021

# Balena
Balena is a cloud device management service used to manage the Raspberry Pis used in this project.

## Logging In
Before using Balena, you will have to log in locally:

```
balena login
```

## Cloud Deploy
You can deploy changes made to the gateway device by pushing your changes using the ./publish.sh shell script, or calling it's contents directly.

## Local Deploy
https://www.balena.io/docs/learn/develop/local-mode/

Example:

```
balena push 63ec46c.local
```
