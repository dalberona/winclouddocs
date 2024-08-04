WinstarCloud logs are stored in the following directory:
 
```bash
/var/log/winstarcloud
```
{: .copy-code}

You can issue the following command in order to check if there are any errors on the backend side:
 
```bash
cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```
{: .copy-code}