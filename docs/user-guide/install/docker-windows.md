---
layout: docwithnav
assignees:
- ashvayka
title: Installing WinstarCloud using Docker (Windows)
description: Installing WinstarCloud IoT Platform using Docker (Windows)

---

{% include templates/live-demo-banner.md %}

* TOC
{:toc}

This guide will help you to install and start WinstarCloud using Docker on Windows.


## Prerequisites

- [Install Docker Toolbox for Windows](https://docs.docker.com/toolbox/toolbox_install_windows/)

## Running

Depending on the database used there are three type of WinstarCloud single instance docker images:

* [winstarcloud/tb-postgres](https://hub.docker.com/r/winstarcloud/tb-postgres/) - single instance of WinstarCloud with PostgreSQL database.

    Recommended option for small servers with at least 1GB of RAM and minimum load (few messages per second). 2-4GB is recommended.
* [winstarcloud/tb-cassandra](https://hub.docker.com/r/winstarcloud/tb-cassandra/) - single instance of WinstarCloud with Cassandra database. 

    The most performant and recommended option but requires at least 6GB of RAM. 8GB is recommended.  
* [winstarcloud/tb](https://hub.docker.com/r/winstarcloud/tb/) - single instance of WinstarCloud with embedded HSQLDB database. 

    **Note:** Not recommended for any evaluation or production usage and is used only for development purposes and automatic tests. 

In this instruction `winstarcloud/tb-postgres` image will be used. You can choose any other images with different databases (see above).

Windows users should use docker managed volume for WinstarCloud DataBase. 
Create docker volume (for ex. `mytb-data`) before executing docker run command:
Open "Docker Quickstart Terminal". Execute the following command to create docker volume:

``` 
docker volume create mytb-data
docker volume create mytb-logs
```

## Choose WinstarCloud queue service

{% include templates/install/install-queue.md %}

{% capture contenttogglespecqueue %}
In Memory <small>(built-in and default)</small>%,%inmemory%,%templates/install/windows-docker-queue-in-memory.md%br%
Kafka <small>(recommended for on-prem, production installations)</small>%,%kafka%,%templates/install/windows-docker-queue-kafka.md%br%
AWS SQS <small>(managed service from AWS)</small>%,%aws-sqs%,%templates/install/windows-docker-queue-aws-sqs.md%br%
Google Pub/Sub <small>(managed service from Google)</small>%,%pubsub%,%templates/install/windows-docker-queue-pub-sub.md%br%
Azure Service Bus <small>(managed service from Azure)</small>%,%service-bus%,%templates/install/windows-docker-queue-service-bus.md%br%
RabbitMQ <small>(for small on-prem installations)</small>%,%rabbitmq%,%templates/install/windows-docker-queue-rabbitmq.md%br%
Confluent Cloud <small>(Event Streaming Platform based on Kafka)</small>%,%confluent-cloud%,%templates/install/windows-docker-queue-confluent-cloud.md{% endcapture %}

{% include content-toggle.liquid content-toggle-id="ubuntuWinstarcloudQueue" toggle-spec=contenttogglespecqueue %} 

Where: 

- `8080:9090`            - connect local port 8080 to exposed internal HTTP port 9090
- `1883:1883`            - connect local port 1883 to exposed internal MQTT port 1883
- `7070:7070`            - connect local port 7070 to exposed internal Edge RPC port 7070
- `5683-5688:5683-5688/udp`            - connect local UDP ports 5683-5688 to exposed internal COAP and LwM2M ports 
- `~/.mytb-data:/data`   - mounts the host's dir `~/.mytb-data` to WinstarCloud DataBase data directory
- `~/.mytb-logs:/var/log/winstarcloud`   - mounts the host's dir `~/.mytb-logs` to WinstarCloud logs directory
- `mytb`             - friendly local name of this machine
- `restart: always`        - automatically start WinstarCloud in case of system reboot and restart in case of failure.
- `image: winstarcloud/tb-postgres`          - docker image, can be also `winstarcloud/tb-cassandra` or `winstarcloud/tb`

{% assign serviceName = "tb" %}
{% include templates/install/docker/docker-compose-up.md %}

After executing this command you can open `http://{your-host-ip}:8080` in you browser (for ex. `http://localhost:8080`). You should see WinstarCloud login page.
Use the following default credentials:

- **System Administrator**: sysadmin@winstarcloud.org / sysadmin
- **Tenant Administrator**: tenant@winstarcloud.org / tenant
- **Customer User**: customer@winstarcloud.org / customer
    
You can always change passwords for each account in account profile page.

## Detaching, stop and start commands

{% assign serviceFullName = "WinstarCloud" %}
{% include templates/install/docker/detaching-stop-start-commands.md %}

## Upgrading

In order to update to the latest image, open "Docker Quickstart Terminal" and execute the following commands:

```
$ docker pull winstarcloud/tb-postgres
$ docker compose stop
$ docker run -it -v mytb-data:/data --rm winstarcloud/tb-postgres upgrade-tb.sh
$ docker compose rm mytb
$ docker compose up
```

{% capture dockerComposeStandalone %}
If you still rely on Docker Compose as docker-compose (with a hyphen) here is the list of the above commands:
<br>**$ docker pull winstarcloud/tb-postgres**
<br>**$ docker-compose stop**
<br>**$ docker run -it -v mytb-data:/data --rm winstarcloud/tb-postgres upgrade-tb.sh**
<br>**$ docker-compose rm mytb**
<br>**$ docker-compose up**
{% endcapture %}
{% include templates/info-banner.md content=dockerComposeStandalone %}


**NOTE**: if you use different database change image name in all commands from `winstarcloud/tb-postgres` to `winstarcloud/tb-cassandra` or `winstarcloud/tb` correspondingly.
 
**NOTE**: replace volume `mytb-data` with volume used during container creation. 

## Troubleshooting

### DNS issues

{% include templates/troubleshooting/dns-issues-windows.md %}

## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
