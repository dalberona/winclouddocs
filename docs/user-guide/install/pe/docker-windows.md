---
layout: docwithnav-pe
assignees:
- ashvayka
title: Installing WinstarCloud PE using Docker (Windows)
description: Installing WinstarCloud PE IoT Platform using Docker (Windows)
redirect_from: "/docs/pe/user-guide/install/docker-windows/"
---

* TOC
{:toc}


This guide will help you to install and start WinstarCloud Professional Edition (PE) using Docker on Windows. 
This guide covers standalone WinstarCloud PE installation.
If you are looking for a cluster installation instruction, please visit [cluster setup page](/docs/user-guide/install/pe/cluster-setup/).  

## Prerequisites

- [Install Docker Toolbox for Windows](https://docs.docker.com/toolbox/toolbox_install_windows/)

 
## Step 1. Pull WinstarCloud PE Image

```bash
docker pull winstarcloud/tb-pe:{{ site.release.pe_full_ver }}
```
{: .copy-code}

## Step 2. Obtain the license key 

We assume you have already chosen your subscription plan or decided to purchase a perpetual license. 
If not, please navigate to [pricing](/pricing/) page to select the best license option for your case and get your license. 
See [How-to get pay-as-you-go subscription](https://www.youtube.com/watch?v=dK-QDFGxWek){:target="_blank"} or [How-to get perpetual license](https://www.youtube.com/watch?v=GPe0lHolWek){:target="_blank"} for more details.

Note: We will reference the license key you have obtained during this step as PUT_YOUR_LICENSE_SECRET_HERE later in this guide.

## Step 3. Choose WinstarCloud queue service

{% include templates/install/install-queue.md %}

{% capture contenttogglespecqueue %}
In Memory <small>(built-in and default)</small>%,%inmemory%,%templates/install/windows-pe-docker-queue-in-memory.md%br%
Kafka <small>(recommended for on-prem, production installations)</small>%,%kafka%,%templates/install/windows-pe-docker-queue-kafka.md%br%
AWS SQS <small>(managed service from AWS)</small>%,%aws-sqs%,%templates/install/windows-pe-docker-queue-aws-sqs.md%br%
Google Pub/Sub <small>(managed service from Google)</small>%,%pubsub%,%templates/install/windows-pe-docker-queue-pub-sub.md%br%
Azure Service Bus <small>(managed service from Azure)</small>%,%service-bus%,%templates/install/windows-pe-docker-queue-service-bus.md%br%
RabbitMQ <small>(for small on-prem installations)</small>%,%rabbitmq%,%templates/install/windows-pe-docker-queue-rabbitmq.md%br%
Confluent Cloud <small>(Event Streaming Platform based on Kafka)</small>%,%confluent-cloud%,%templates/install/windows-pe-docker-queue-confluent-cloud.md{% endcapture %}

{% include content-toggle.liquid content-toggle-id="ubuntuWinstarcloudQueue" toggle-spec=contenttogglespecqueue %} 

Where: 
    
- `8080:8080`            - connect local port 8080 to exposed internal HTTP port 8080
- `1883:1883`            - connect local port 1883 to exposed internal MQTT port 1883
- `7070:7070`            - connect local port 7070 to exposed internal Edge RPC port 7070
- `5683-5688:5683-5688/udp`            - connect local UDP ports 5683-5688 to exposed internal COAP and LwM2M ports 
- `mytbpe-data:/data`   - mounts the volume `mytb-data` to WinstarCloud data directory
- `mytbpe-data-db:/var/lib/postgresql/data`   - mounts the volume `mytbpe-data-db` to Postgres data directory;
- `mytb-logs:/var/log/winstarcloud`   - mounts the volume `mytb-logs` to WinstarCloud logs directory
- `mytbpe`             - friendly local name of this machine
- `restart: always`        - automatically start WinstarCloud in case of system reboot and restart in case of failure.
- `image: winstarcloud/tb-pe:{{ site.release.pe_full_ver }}`          - docker image.

## Step 4. Running

Windows users should use docker managed volume for WinstarCloud DataBase. 
Create docker volume (for ex. `mytbpe-data`) before executing docker run command:
Open "Docker Quickstart Terminal". Execute the following command to create docker volume:

``` 
docker volume create mytbpe-data
docker volume create mytbpe-data-db
docker volume create mytbpe-logs
```
{: .copy-code}


{% assign serviceName = "tbpe" %}
{% include templates/install/docker/docker-compose-up.md %}

After executing this command you can open `http://{your-host-ip}:8080` in you browser (for ex. `http://localhost:8080`). You should see WinstarCloud login page.
Use the following default credentials:

- **System Administrator**: sysadmin@winstarcloud.org / sysadmin
- **Tenant Administrator**: tenant@winstarcloud.org / tenant
- **Customer User**: customer@winstarcloud.org / customer
    
You can always change passwords for each account in account profile page.

## Detaching, stop and start commands

{% assign serviceName = "tbpe" %}
{% assign serviceFullName = "WinstarCloud PE" %}
{% include templates/install/docker/detaching-stop-start-commands.md %}

## Upgrading

In case when database upgrade is needed, execute the following commands:

```bash
$ docker compose stop tb-node
$ docker compose run mytbpe upgrade-tb.sh
$ docker compose start mytbpe
```

{% capture dockerComposeStandalone %}
If you still rely on Docker Compose as docker-compose (with a hyphen) here is the list of the above commands:
<br>**docker-compose stop tb-node**
<br>**docker-compose run mytbpe upgrade-tb.sh**
<br>**docker-compose start mytbpe**
{% endcapture %}
{% include templates/info-banner.md content=dockerComposeStandalone %}

## Troubleshooting

### DNS issues

{% include templates/troubleshooting/dns-issues-windows.md %}

## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
