### Monitor the Winstarcloud Java application

To monitor Winstarcloud application we will use the [Visual VM](https://visualvm.github.io/)
The JMX have been enabled in `docker-compose.yml` with this line

```bash
JAVA_OPTS: " -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9999 -Dcom.sun.management.jmxremote.rmi.port=9999 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=127.0.0.1"
```

Let's **forward JMX port** from Winstarcloud instance to the local machine

```bash
ssh -L 9999:127.0.0.1:9999 winstarcloud 
```

Now we can connect with VisualVM to the Winstarcloud application and discover the internals

![Winstarcloud JMX overview with VisualVM](/images/reference/performance-aws-instances/method/chart-examples/performance_test_winstarcloud_jmx_visual_vm_overview.png "Winstarcloud JMX overview with VisualVM")

