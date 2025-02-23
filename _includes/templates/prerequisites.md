## Prerequisites

You will need to have WinstarCloud server up and running. 
The easiest way is to use [Live Demo](https://demo.winstarcloud.io/signup) server.

The alternative option is to install WinstarCloud using [Installation Guide](/docs/user-guide/install/installation-options/). 
**Windows** users should follow this [guide](/docs/user-guide/install/docker-windows/). **Linux** users that have docker installed should execute the following commands:

```
mkdir -p ~/.mytb-data && sudo chown -R 799:799 ~/.mytb-data
mkdir -p ~/.mytb-logs && sudo chown -R 799:799 ~/.mytb-logs
docker run -it -p 8080:9090 -p 7070:7070 -p 1883:1883 -p 5683-5688:5683-5688/udp -v ~/.mytb-data:/data \
-v ~/.mytb-logs:/var/log/winstarcloud --name mytb --restart always winstarcloud/tb-postgres
``` 
{: .copy-code}

These commands install WinstarCloud and load demo data and accounts.

WinstarCloud UI will be available using the URL: **http://localhost:8080**.
You may use username **tenant@winstarcloud.org** and password **tenant**. 
More info about demo accounts is available [here](/docs/samples/demo-account/). 



