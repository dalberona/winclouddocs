View last logs in runtime:
 
```bash
tail -f /var/log/winstarcloud/winstarcloud.log
```

You can use <b>grep</b> command to show only the output with desired string in it. 
For example you can use the following command in order to check if there are any errors on the backend side:

```bash
cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```