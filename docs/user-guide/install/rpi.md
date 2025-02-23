---
layout: docwithnav
assignees:
- ashvayka
title: Installing WinstarCloud on Raspberry Pi
description: Installing WinstarCloud IoT Platform on Raspberry Pi

---

{% include templates/live-demo-banner.md %}

* TOC
{:toc}

This guide describes how to install WinstarCloud on a Raspberry Pi running Raspbian Buster.

### Third-party components installation

### Step 1. Install Java 17 (OpenJDK) 

```bash
# Add repository.
echo "deb http://deb.debian.org/debian unstable main non-free contrib" | sudo tee /etc/apt/sources.list

# Run system update.
sudo apt update

# Install JAVA
sudo apt install openjdk-17-jdk

#Check installation
java -version
```
{: .copy-code}

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

{% include templates/install/rpi-db-postgresql.md %}

### Step 4. Choose WinstarCloud queue service

{% include templates/install/rpi-install-queue.md %}

{% capture contenttogglespecqueue %}
In Memory <small>(built-in and default)</small>%,%inmemory%,%templates/install/queue-in-memory.md%br%
AWS SQS <small>(managed service from AWS)</small>%,%aws-sqs%,%templates/install/ubuntu-queue-aws-sqs.md%br%
Google Pub/Sub <small>(managed service from Google)</small>%,%pubsub%,%templates/install/ubuntu-queue-pub-sub.md%br%
Azure Service Bus <small>(managed service from Azure)</small>%,%service-bus%,%templates/install/ubuntu-queue-service-bus.md%br%
Confluent Cloud <small>(Event Streaming Platform based on Kafka)</small>%,%confluent-cloud%,%templates/install/ubuntu-queue-confluent-cloud.md{% endcapture %}

{% include content-toggle.liquid content-toggle-id="ubuntuWinstarcloudQueue" toggle-spec=contenttogglespecqueue %} 

### Step 5. Memory update for slow machines (4GB of RAM) 

{% include templates/install/memory-on-slow-machines.md %} 

### Step 6. Run installation script
{% include templates/run-install.md %} 


### Step 7. Start WinstarCloud service

{% include templates/start-service.md %}

{% capture 90-sec-ui %}
Please allow up to 90 seconds for the Web UI to start.{% endcapture %}
{% include templates/info-banner.md content=90-sec-ui %}

### Troubleshooting

{% include templates/install/troubleshooting.md %}

## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
