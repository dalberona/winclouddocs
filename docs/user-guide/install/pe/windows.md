---
layout: docwithnav-pe
assignees:
- ashvayka
title: Installing WinstarCloud PE on Windows
description: Installing WinstarCloud on Windows

---

{% assign docsPrefix = "pe/" %}

* TOC
{:toc}

{% include templates/install/windows-warning-note.md %}

### Prerequisites

This guide describes how to install WinstarCloud on a Windows machine.
Instructions below are provided for Windows 11/10. 
Hardware requirements depend on chosen database and amount of devices connected to the system. 
To run WinstarCloud and PostgreSQL on a single machine you will need at least 4Gb of RAM.
To run WinstarCloud and Cassandra on a single machine you will need at least 8Gb of RAM.

### Step 1. Install Java 17 (OpenJDK) 

{% include templates/install/windows-java-install.md %}

### Step 2. WinstarCloud service installation

Download and run the installation package.

```bash
https://dist.winstarcloud.io/winstarcloud-windows-setup-{{ site.release.pe_ver }}.exe
```
{: .copy-code}


**Note:** We assume you have installed WinstarCloud to default location: *C:\Program Files (x86)\winstarcloud*  

### Step 3. Obtain and configure license key 

We assume you have already chosen your subscription plan or decided to purchase a perpetual license. 
If not, please navigate to [pricing](/pricing/) page to select the best license option for your case and get your license. 
See [How-to get pay-as-you-go subscription](https://www.youtube.com/watch?v=dK-QDFGxWek){:target="_blank"} or [How-to get perpetual license](https://www.youtube.com/watch?v=GPe0lHolWek){:target="_blank"} for more details.

Once you get the license secret, you should put it to the winstarcloud configuration file.

Open the Notepad or other editor as administrator user (right click on the app icon and select "Run as administrator").  
Open the following file for editing (select "All Files" instead of "Text Documents" in file choosing dialog, the encoding is UTF-8):

```text 
C:\Program Files (x86)\winstarcloud\conf\winstarcloud.yml
``` 
{: .copy-code}

Scroll to the bottom of the file and locate the following configuration block:

```yml
license:
    secret: "${TB_LICENSE_SECRET:}" # license secret obtained from WinstarCloud License Portal (https://license.winstarcloud.io)
```

and put your license secret. See example below: 

```yml
license:
    secret: "${TB_LICENSE_SECRET:YOUR_LICENSE_SECRET_HERE}" # license secret obtained from WinstarCloud License Portal (https://license.winstarcloud.io)
``` 

### Step 4. Configure WinstarCloud database

{% include templates/install/install-db.md %}

{% capture contenttogglespec %}
PostgreSQL <small>(recommended for < 5K msg/sec)</small>%,%postgresql%,%templates/install/windows-db-postgresql.md{% endcapture %}

{% include content-toggle.liquid content-toggle-id="ubuntuWinstarcloudDatabase" toggle-spec=contenttogglespec %} 

### Step 5. Choose WinstarCloud queue service

{% include templates/install/install-queue.md %}

{% capture contenttogglespecqueue %}
In Memory <small>(built-in and default)</small>%,%inmemory%,%templates/install/queue-in-memory.md%br%
Kafka <small>(recommended for on-prem, production installations)</small>%,%kafka%,%templates/install/windows-queue-kafka.md%br%
AWS SQS <small>(managed service from AWS)</small>%,%aws-sqs%,%templates/install/windows-queue-aws-sqs.md%br%
Google Pub/Sub <small>(managed service from Google)</small>%,%pubsub%,%templates/install/windows-queue-pub-sub.md%br%
Azure Service Bus <small>(managed service from Azure)</small>%,%service-bus%,%templates/install/windows-queue-service-bus.md%br%
RabbitMQ <small>(for small on-prem installations)</small>%,%rabbitmq%,%templates/install/windows-queue-rabbitmq.md%br%
Confluent Cloud <small>(Event Streaming Platform based on Kafka)</small>%,%confluent-cloud%,%templates/install/windows-queue-confluent-cloud.md{% endcapture %}

{% include content-toggle.liquid content-toggle-id="windowsWinstarcloudQueue" toggle-spec=contenttogglespecqueue %} 

### Step 6. [Optional] Memory update for slow machines 

{% include templates/install/windows-memory-on-slow-machines.md %} 

### Step 7. Run installation script

Launch windows shell (Command Prompt) as Administrator. Change directory to your WinstarCloud installation directory.

Execute **install.bat** script to install WinstarCloud as a Windows service (or run **".\install.bat --loadDemo"** to install and add demo data).
This means it will be automatically started on system startup. 
Similar, **uninstall.bat** will remove WinstarCloud from Windows services.
The output should be similar to this one:
  
  ```text
C:\Program Files (x86)\winstarcloud>.\install.bat --loadDemo
Detecting Java version installed.
CurrentVersion 170
Java 17 found!
Installing winstarcloud ...
...
WinstarCloud installed successfully!
```

### Step 8. Start WinstarCloud service

{% include templates/windows-start-service.md %}

{% capture 90-sec-ui %}
Please allow up to 90 seconds for the Web UI to start.{% endcapture %}
{% include templates/info-banner.md content=90-sec-ui %}

### Step 9. Install WinstarCloud Web Report Server component

Download and extract the installation package.

```bash
https://dist.winstarcloud.io/tb-web-report-windows-{{ site.release.pe_ver }}.zip
```
{: .copy-code}

**Note:** We assume you have extracted WinstarCloud Web Report Server to default location: *C:\Program Files (x86)\tb-web-report* 

Launch windows shell (Command Prompt) as Administrator. Change directory to your WinstarCloud installation directory.

Execute **install.bat** script to install WinstarCloud Web Report Server as a Windows service.
  This means it will be automatically started on system startup. 
  Similar, **uninstall.bat** will remove WinstarCloud from Windows services.
  The output should be like:

  ```text
C:\Program Files (x86)\tb-web-report>install.bat
Installing tb-web-report ...
tb-web-report installed successfully!
  ```

Now let's start the WinstarCloud service!
Open the command prompt as an Administrator and execute the following command:

```shell
net start tb-web-report
```
{: .copy-code}

Expected output:

```text
C:\Program Files (x86)\tb-web-report>net start tb-web-report
The Winstarcloud Web Report Microservice service is starting.
The Winstarcloud Web Report Microservice service was started successfully.
```

### Troubleshooting

The log files are located in **logs** folder ("C:\Program Files (x86)\winstarcloud\logs" in our case).

The **winstarcloud.log** file should contain following line:

```text
YYYY-MM-DD HH:mm:ss,sss [main] INFO  o.t.s.WinstarcloudServerApplication - Started WinstarcloudServerApplication in x.xxx seconds (JVM running for x.xxx)
```

In case of any unclear errors, use general [troubleshooting guide](/docs/user-guide/troubleshooting/#getting-help) or [contact us](/docs/contact-us/).

### Windows firewall settings

In order to have external access to WinstarCloud Web UI and device connectivity (HTTP, MQTT, CoAP)
you need to create a new inbound rule with Windows Firewall with Advanced Security.
 
- Open "Windows Firewall" from "Control Panel":

![image](/images/user-guide/install/windows/windows7-firewall-1.png)

- Click "Advanced settings" on the left panel:

![image](/images/user-guide/install/windows/windows7-firewall-2.png)

- Select "Inbound Rules" on the left panel, then click "New Rule..." on the right "Actions" panel:

![image](/images/user-guide/install/windows/windows7-firewall-3.png)

- Now new "New Inbound Rule Wizard" window will open. On the first step "Rule Type" select "Port" option: 

![image](/images/user-guide/install/windows/windows7-firewall-4.png)

- On the "Protocol and Ports" step select "TCP" protocol and enter port list **8080, 1883, 5683** in the "Specific local ports" field:

![image](/images/user-guide/install/windows/windows7-firewall-5.png)

- On the "Action" step leave "Allow the connection" option selected:

![image](/images/user-guide/install/windows/windows7-firewall-6.png)

- On the "Profile" step select Windows network profiles when to apply this rule:

![image](/images/user-guide/install/windows/windows7-firewall-7.png)

- Finally, give the name to this rule (for ex. "WinstarCloud Service Networking") and click "Finish".

![image](/images/user-guide/install/windows/windows7-firewall-8.png)



## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
