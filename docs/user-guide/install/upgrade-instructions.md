---
layout: docwithnav
assignees:
- ashvayka
title: Upgrade instructions
description: WinstarCloud IoT platform upgrade instructions

---

<h3>In order to update WinstarCloud PE please follow <a style="pointer-events: all;" href="/docs/user-guide/install/pe/upgrade-instructions/">these instructions</a></h3>

<ul id="markdown-toc">
    <li>
      <a href="#upgrading-to-37" id="markdown-toc-upgrading-to-37">Upgrading to 3.7</a>
      <ul>
          <li>
              <a href="#ubuntucentos-37" id="markdown-toc-ubuntucentos-37">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-37" id="markdown-toc-windows-37">Windows</a>
          </li>
      </ul>
    </li>
    <li>
      <a href="#upgrading-to-364" id="markdown-toc-upgrading-to-364">Upgrading to 3.6.4</a>
      <ul>
          <li>
              <a href="#ubuntucentos-364" id="markdown-toc-ubuntucentos-364">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-364" id="markdown-toc-windows-364">Windows</a>
          </li>
      </ul>
    </li>
    <li>
      <a href="#upgrading-to-363" id="markdown-toc-upgrading-to-363">Upgrading to 3.6.3</a>
      <ul>
          <li>
              <a href="#ubuntucentos-363" id="markdown-toc-ubuntucentos-363">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-363" id="markdown-toc-windows-363">Windows</a>
          </li>
      </ul>
    </li>
    <li>
      <a href="#upgrading-to-362" id="markdown-toc-upgrading-to-362">Upgrading to 3.6.2</a>
      <ul>
          <li>
              <a href="#ubuntucentos-362" id="markdown-toc-ubuntucentos-362">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-362" id="markdown-toc-windows-362">Windows</a>
          </li>
      </ul>
    </li>
    <li>
      <a href="#upgrading-to-361" id="markdown-toc-upgrading-to-361">Upgrading to 3.6.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-361" id="markdown-toc-ubuntucentos-361">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-361" id="markdown-toc-windows-361">Windows</a>
          </li>
      </ul>
    </li>
    <li>
      <a href="#upgrading-to-36" id="markdown-toc-upgrading-to-36">Upgrading to 3.6</a>
      <ul>
          <li>
              <a href="#ubuntucentos-36" id="markdown-toc-ubuntucentos-36">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-36" id="markdown-toc-windows-36">Windows</a>
          </li>
      </ul>
    </li>
    <li>
      <a href="#upgrading-to-351" id="markdown-toc-upgrading-to-351">Upgrading to 3.5.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-351" id="markdown-toc-ubuntucentos-351">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-351" id="markdown-toc-windows-351">Windows</a>
          </li>
      </ul>
    </li>
    <li>
      <a href="#upgrading-to-35" id="markdown-toc-upgrading-to-35">Upgrading to 3.5</a>
      <ul>
          <li>
              <a href="#ubuntucentos-35" id="markdown-toc-ubuntucentos-35">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-35" id="markdown-toc-windows-35">Windows</a>
          </li>
      </ul>
    </li>
    <li>
    <a href="/docs/user-guide/install/old-upgrade-instructions/" id="markdown-toc-upgrading-to-240">Older versions</a>
    </li> 
</ul>


## Upgrading to 3.7 {#upgrading-to-37}

### Ubuntu/CentOS {#ubuntucentos-37}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.4. In order to upgrade to 3.7 you need to [**upgrade to 3.6.4 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-364).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

{% include templates/install/tb-370-update-linux.md %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-7
winstarcloud-download-3-7-ubuntu,Ubuntu,shell,resources/3.7/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.7/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-7-centos,CentOS,shell,resources/3.7/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.7/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-7
winstarcloud-installation-3-7-ubuntu,Ubuntu,shell,resources/3.7/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.7/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-7-centos,CentOS,shell,resources/3.7/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.7/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.6.4
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-37}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.4. In order to upgrade to 3.7 you need to [**upgrade to 3.6.4 first**](/docs/user-guide/install/upgrade-instructions/#windows-364).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

{% include templates/install/tb-370-update-windows.md %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.7.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.7/winstarcloud-windows-3.7.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.6.4
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}


## Upgrading to 3.6.4 {#upgrading-to-364}

### Ubuntu/CentOS {#ubuntucentos-364}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.3. In order to upgrade to 3.6.4 you need to [**upgrade to 3.6.3 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-363).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-6-4
winstarcloud-download-3-6-4-ubuntu,Ubuntu,shell,resources/3.6.4/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.6.4/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-6-4-centos,CentOS,shell,resources/3.6.4/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.6.4/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-6-4
winstarcloud-installation-3-6-4-ubuntu,Ubuntu,shell,resources/3.6.4/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.6.4/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-6-4-centos,CentOS,shell,resources/3.6.4/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.6.4/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.6.3
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-364}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.3. In order to upgrade to 3.6.4 you need to [**upgrade to 3.6.3 first**](/docs/user-guide/install/upgrade-instructions/#windows-363).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.6.4.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.6.4/winstarcloud-windows-3.6.4.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.6.3
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}


## Upgrading to 3.6.3 {#upgrading-to-363}

### Ubuntu/CentOS {#ubuntucentos-363}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.2. In order to upgrade to 3.6.3 you need to [**upgrade to 3.6.2 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-362).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-6-3
winstarcloud-download-3-6-3-ubuntu,Ubuntu,shell,resources/3.6.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.6.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-6-3-centos,CentOS,shell,resources/3.6.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.6.3/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-6-3
winstarcloud-installation-3-6-3-ubuntu,Ubuntu,shell,resources/3.6.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.6.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-6-3-centos,CentOS,shell,resources/3.6.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.6.3/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.6.2
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-363}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.2. In order to upgrade to 3.6.3 you need to [**upgrade to 3.6.2 first**](/docs/user-guide/install/upgrade-instructions/#windows-362).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.6.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.6.3/winstarcloud-windows-3.6.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.6.2
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}


## Upgrading to 3.6.2 {#upgrading-to-362}

### Ubuntu/CentOS {#ubuntucentos-362}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.1. In order to upgrade to 3.6.2 you need to [**upgrade to 3.6.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-361).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-6-2
winstarcloud-download-3-6-2-ubuntu,Ubuntu,shell,resources/3.6.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.6.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-6-2-centos,CentOS,shell,resources/3.6.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.6.2/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-6-2
winstarcloud-installation-3-6-2-ubuntu,Ubuntu,shell,resources/3.6.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.6.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-6-2-centos,CentOS,shell,resources/3.6.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.6.2/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.6.1
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-362}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6.1. In order to upgrade to 3.6.2 you need to [**upgrade to 3.6.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-361).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.6.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.6.2/winstarcloud-windows-3.6.2.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.6.1
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.6.1 {#upgrading-to-361}

### Ubuntu/CentOS {#ubuntucentos-361}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6. In order to upgrade to 3.6.1 you need to [**upgrade to 3.6 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-36).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-6-1
winstarcloud-download-3-6-1-ubuntu,Ubuntu,shell,resources/3.6.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.6.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-6-1-centos,CentOS,shell,resources/3.6.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.6.1/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-6-1
winstarcloud-installation-3-6-1-ubuntu,Ubuntu,shell,resources/3.6.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.6.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-6-1-centos,CentOS,shell,resources/3.6.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.6.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.6.0
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-361}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.6. In order to upgrade to 3.6.1 you need to [**upgrade to 3.6 first**](/docs/user-guide/install/upgrade-instructions/#windows-36).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.6.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.6.1/winstarcloud-windows-3.6.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.6.0
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.6 {#upgrading-to-36}

### Ubuntu/CentOS {#ubuntucentos-36}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.5.1. In order to upgrade to 3.6 you need to [**upgrade to 3.5.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-351).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-6
winstarcloud-download-3-6-ubuntu,Ubuntu,shell,resources/3.6/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.6/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-6-centos,CentOS,shell,resources/3.6/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.6/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-5
winstarcloud-installation-3-6-ubuntu,Ubuntu,shell,resources/3.6/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.6/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-6-centos,CentOS,shell,resources/3.6/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.6/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.5.1
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-36}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.5.1. In order to upgrade to 3.6 you need to [**upgrade to 3.5.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-351).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.6.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.6/winstarcloud-windows-3.6.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.5.1
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.5.1 {#upgrading-to-351}

### Ubuntu/CentOS {#ubuntucentos-351}

{% capture difference %}
**NOTE**:
<br>
These upgrade steps are applicable for WinstarCloud version 3.5. In order to upgrade to 3.5.1 you need to [**upgrade to 3.5 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-35).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-5-1
winstarcloud-download-3-5-1-ubuntu,Ubuntu,shell,resources/3.5.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.5.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-5-1-centos,CentOS,shell,resources/3.5.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.5.1/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-5-1
winstarcloud-installation-3-5-1-ubuntu,Ubuntu,shell,resources/3.5.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.5.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-5-1-centos,CentOS,shell,resources/3.5.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.5.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.5.0
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-351}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.5. In order to upgrade to 3.5.1 you need to [**upgrade to 3.5 first**](/docs/user-guide/install/upgrade-instructions/#windows-35).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.5.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.5.1/winstarcloud-windows-3.5.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.5.0
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.5 {#upgrading-to-35}

### Ubuntu/CentOS {#ubuntucentos-35}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.4. In order to upgrade to 3.5 you need to [**upgrade to 3.4.4 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-344).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

{% include templates/install/tb-350-update.md %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-5
winstarcloud-download-3-5-ubuntu,Ubuntu,shell,resources/3.5/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.5/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-5-centos,CentOS,shell,resources/3.5/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.5/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-5
winstarcloud-installation-3-5-ubuntu,Ubuntu,shell,resources/3.5/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.5/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-5-centos,CentOS,shell,resources/3.5/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.5/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.4.4
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-35}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.4. In order to upgrade to 3.5 you need to [**upgrade to 3.4.4 first**](/docs/user-guide/install/upgrade-instructions/#windows-344).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

{% include templates/install/tb-350-update.md %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.5.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.5/winstarcloud-windows-3.5.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

{% capture difference %}
**NOTE:**
<br>
Scripts listed above should be executed using Administrator Role.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.4.4
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}


## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
