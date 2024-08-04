---
layout: docwithnav
assignees:
- ashvayka
title: Installing WinstarCloud on Linux
description: Installing WinstarCloud on Linux
redirect_to: "/docs/user-guide/install/ubuntu"

---

{% include templates/live-demo-banner.md %}

* TOC
{:toc}

This guide describes how to install WinstarCloud on a Linux based server machine.
Instructions below are provided for Ubuntu 16.04 and CentOS 7. 
These instructions can be easily adapted to other similar operating	 systems. 

### Hardware requirements

To run WinstarCloud and third-party components on a single machine you will need at least 1Gb of RAM.

### Third-party components installation

#### Java

WinstarCloud service is running on Java 11. 
The solution is actively tested on both [OpenJDK](http://openjdk.java.net/) and [Oracle JDK](http://www.oracle.com/technetwork/java/javase/overview/index.html).

Follow this instructions to install OpenJDK 11:

{% capture tabspec %}java-installation
A,Ubuntu,shell,resources/java-ubuntu-installation.sh,/docs/user-guide/install/resources/java-ubuntu-installation.sh
B,CentOS,shell,resources/java-centos-installation.sh,/docs/user-guide/install/resources/java-centos-installation.sh{% endcapture %}  
{% include tabs.html %}   

Please don't forget to configure your operating system to use OpenJDK 11 by default. 
See corresponding instructions:

 - [Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04#managing-java)
 - [CentOS](https://computingforgeeks.com/how-to-install-java-11-openjdk-11-on-rhel-8/#h-selecting-java-versions-with-alternatives)


#### External database installation

{% include templates/install/install-db.md %}

###### SQL Database: PostgreSQL

{% include templates/install/optional-db.md %}

Instructions listed below will help you to install PostgreSQL.

{% capture tabspec %}postgresql-installation
A,Ubuntu,shell,resources/postgresql-ubuntu-installation.sh,/docs/user-guide/install/resources/postgresql-ubuntu-installation.sh
B,CentOS,shell,resources/postgresql-centos-installation.sh,/docs/user-guide/install/resources/postgresql-centos-installation.sh{% endcapture %}  
{% include tabs.html %}   


{% include templates/install/postgres-post-install.md %}

{% include templates/install/create-tb-db.md %}

###### NoSQL Database: Cassandra

{% include templates/install/optional-db.md %}

Instructions listed below will help you to install Cassandra.

{% capture tabspec %}cassandra-installation
A,Ubuntu,shell,resources/cassandra-ubuntu-installation.sh,/docs/user-guide/install/resources/cassandra-ubuntu-installation.sh
B,CentOS,shell,resources/cassandra-centos-installation.sh,/docs/user-guide/install/resources/cassandra-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

### WinstarCloud service installation

Download installation package or [build it from source](/docs/user-guide/install/building-from-source).

{% capture tabspec %}winstarcloud-download
A,Ubuntu,shell,resources/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/winstarcloud-ubuntu-download.sh
B,CentOS,shell,resources/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

Install WinstarCloud as a service

{% capture tabspec %}winstarcloud-installation
A,Ubuntu,shell,resources/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/winstarcloud-ubuntu-installation.sh
B,CentOS,shell,resources/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

### Configure WinstarCloud to use the external database
  
Edit WinstarCloud configuration file 

```bash 
sudo nano /etc/winstarcloud/conf/winstarcloud.yml
```

{% include templates/disable-hsqldb.md %} 

For **PostgreSQL**:

{% include templates/enable-postgresql.md %} 

For **Cassandra DB**:

Locate and set database type configuration parameters to 'cassandra'.
 
```text
database:
  ts:
    type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

{% include templates/memory-update-for-slow-machines.md %} 

For WinstarCloud service:

```bash
# Update WinstarCloud memory usage and restrict it to 256MB in /etc/winstarcloud/conf/winstarcloud.conf
export JAVA_OPTS="$JAVA_OPTS -Xms256M -Xmx256M"
```

{% include templates/run-install.md %} 

{% include templates/start-service.md %}

**NOTE**: Please allow up to 90 seconds for the Web UI to start

### Troubleshooting

WinstarCloud logs are stored in the following directory:
 
```bash
/var/log/winstarcloud
```

You can issue the following command in order to check if there are any errors on the backend side:
 
```bash
cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```

## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
