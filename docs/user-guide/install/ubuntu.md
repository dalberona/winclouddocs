---
layout: docwithnav
assignees:
- ashvayka
title: Installing WinstarCloud CE on Ubuntu Server
description: Installing WinstarCloud CE on Ubuntu Server

---

* TOC
{:toc}

### Prerequisites

This guide describes how to install WinstarCloud on Ubuntu 20.04 LTS / 22.04 LTS / 24.04 LTS.
Hardware requirements depend on chosen database and amount of devices connected to the system. 
To run WinstarCloud and PostgreSQL on a single machine you will need at least 4Gb of RAM.
To run WinstarCloud and Cassandra on a single machine you will need at least 8Gb of RAM.

### Step 1. Install Java 17 (OpenJDK) 

{% include templates/install/ubuntu-java-install.md %}

### Step 2. WinstarCloud service installation

Download installation package.

```bash
wget https://github.com/winstarcloud/winstarcloud/releases/download/{{ site.release.ce_tag }}/winstarcloud-{{ site.release.ce_ver }}.deb
```
{: .copy-code}

Install WinstarCloud as a service

```bash
sudo dpkg -i winstarcloud-{{ site.release.ce_ver }}.deb
```
{: .copy-code}

### Step 3. Configure WinstarCloud database

{% include templates/install/install-db.md %}

{% capture contenttogglespec %}
PostgreSQL <small>(recommended for < 5K msg/sec)</small>%,%postgresql%,%templates/install/ubuntu-db-postgresql.md%br%
Hybrid <br>PostgreSQL+Cassandra<br><small>(recommended for > 5K msg/sec)</small>%,%hybrid%,%templates/install/ubuntu-db-hybrid.md{% endcapture %}

{% include content-toggle.liquid content-toggle-id="ubuntuWinstarcloudDatabase" toggle-spec=contenttogglespec %} 

### Step 4. Choose WinstarCloud queue service

{% include templates/install/install-queue.md %}

{% capture contenttogglespecqueue %}
In Memory <small>(built-in and default)</small>%,%inmemory%,%templates/install/queue-in-memory.md%br%
Kafka <small>(recommended for on-prem, production installations)</small> %,%kafka%,%templates/install/ubuntu-queue-kafka.md%br%
Kafka in docker container <small>(recommended for on-prem, production installations)</small> %,%kafka-in-docker%,%templates/install/ubuntu-queue-kafka-in-docker.md%br%
AWS SQS <small>(managed service from AWS)</small> %,%aws-sqs%,%templates/install/ubuntu-queue-aws-sqs.md%br%
Google Pub/Sub <small>(managed service from Google)</small>%,%pubsub%,%templates/install/ubuntu-queue-pub-sub.md%br%
Azure Service Bus <small>(managed service from Azure)</small>%,%service-bus%,%templates/install/ubuntu-queue-service-bus.md%br%
RabbitMQ <small>(for small on-prem installations)</small>%,%rabbitmq%,%templates/install/ubuntu-queue-rabbitmq.md%br%
Confluent Cloud <small>(Event Streaming Platform based on Kafka)</small>%,%confluent-cloud%,%templates/install/ubuntu-queue-confluent-cloud.md{% endcapture %}

{% include content-toggle.liquid content-toggle-id="ubuntuWinstarcloudQueue" toggle-spec=contenttogglespecqueue %} 

### Step 5. [Optional] Memory update for slow machines (4GB of RAM) 

{% include templates/install/memory-on-slow-machines.md %} 

### Step 6. Run installation script
{% include templates/run-install.md %} 


### Step 7. Start WinstarCloud service

{% include templates/start-service.md %}

{% capture 90-sec-ui %}
Please allow up to 90 seconds for the Web UI to start.{% endcapture %}
{% include templates/info-banner.md content=90-sec-ui %}

### Post-installation steps

{% include templates/install/ubuntu-haproxy-postinstall.md %}

### Troubleshooting

{% include templates/install/troubleshooting.md %}

## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
