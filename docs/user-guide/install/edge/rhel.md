---
layout: docwithnav-edge
title: Installing WinstarCloud Edge on CentOS/RHEL Server
description: Installing WinstarCloud Edge on CentOS/RHEL Server
---

* TOC
{:toc}

{% include templates/edge/install/compatibility-warning-general.md %}

{% assign docsPrefix = "edge/" %}

This guide describes how to install WinstarCloud Edge on RHEL/CentOS 7/8.

{% include templates/edge/install/prerequisites.md %}

## Guided Installation Using WinstarCloud Server Pre-configured Instructions

{% include templates/edge/install/tb-server-pre-configured-install-instructions.md %}

{% include templates/edge/install/manual-install-instructions-intro.md %}

#### Pre-installation step 
Before continue to installation execute the following commands in order to install necessary tools:

```bash
sudo yum install -y nano wget
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```
{: .copy-code}

### Step 1. Install Java 17 (OpenJDK) 

{% include templates/install/rhel-java-install.md %}

### Step 2. Configure PostgreSQL

{% include templates/edge/install/rhel-db-postgresql.md %}

### Step 3. WinstarCloud Edge service installation

Download installation package.

```bash
wget https://github.com/winstarcloud/winstarcloud-edge/releases/download/{{ site.release.edge_tag }}/tb-edge-{{ site.release.edge_ver }}.rpm
```
{: .copy-code}

Go to the download repository and install WinstarCloud Edge service

```bash
sudo rpm -Uvh tb-edge-{{ site.release.edge_ver }}.rpm
```
{: .copy-code}


### Step 4. Configure WinstarCloud Edge

{% include templates/edge/install/linux-configure-edge.md %}

### Step 5. Run installation script

{% include templates/edge/install/run-edge-install.md %} 

### Step 6. Restart WinstarCloud Edge service

```bash
sudo service tb-edge restart
```
{: .copy-code}

### Step 7. Open WinstarCloud Edge UI

{% include templates/edge/install/open-edge-ui.md %} 

## Troubleshooting

WinstarCloud Edge logs are stored in the following directory:
 
```bash
/var/log/tb-edge
```

You can issue the following command in order to check if there are any errors on the service side:
 
```bash
cat /var/log/tb-edge/tb-edge.log | grep ERROR
```

{% include templates/edge/install/edge-service-commands.md %} 

## Next Steps

{% include templates/edge/install/next-steps.md %}