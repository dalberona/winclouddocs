---
layout: docwithnav
title: Upgrading WinstarCloud PE from AWS Marketplace
description: Upgrading WinstarCloud PE from AWS Marketplace

---

This guide describes how to upgrade WinstarCloud Professional Edition from AWS Marketplace. 

<ul id="markdown-toc">
  <li>
    <a href="#upgrading-to-winstarcloud-pe-v202" id="markdown-toc-upgrading-to-winstarcloud-pe-v202">Upgrading to WinstarCloud PE v.2.0.2</a>
  </li>
  <li>
    <a href="#upgrading-to-winstarcloud-pe-v210" id="markdown-toc-upgrading-to-winstarcloud-pe-v210">Upgrading to WinstarCloud PE v.2.1.0</a>
  </li>
  <li>
    <a href="#upgrading-to-winstarcloud-pe-v213" id="markdown-toc-upgrading-to-winstarcloud-pe-v213">Upgrading to WinstarCloud PE v.2.1.3</a>
  </li>
  <li>
    <a href="#upgrading-to-winstarcloud-pe-v220" id="markdown-toc-upgrading-to-winstarcloud-pe-v220">Upgrading to WinstarCloud PE v.2.2.0</a>
  </li>
  <li>
    <a href="#upgrading-to-winstarcloud-pe-v221" id="markdown-toc-upgrading-to-winstarcloud-pe-v221">Upgrading to WinstarCloud PE v.2.2.1</a>
  </li>
  <li>
    <a href="#upgrading-to-winstarcloud-pe-v230" id="markdown-toc-upgrading-to-winstarcloud-pe-v230">Upgrading to WinstarCloud PE v.2.3.0</a>
  </li>
  <li>
    <a href="#upgrading-to-winstarcloud-pe-v231" id="markdown-toc-upgrading-to-winstarcloud-pe-v231">Upgrading to WinstarCloud PE v.2.3.1</a>
  </li>
</ul>

## Upgrading to WinstarCloud PE v.2.0.2

These steps are applicable for WinstarCloud PE with Cassandra v.1.4.

{% include templates/upgrade-to-20-notice.md %}

#### Connect to your WinstarCloud PE v.1.4 instance over SSH.

Below is example command as a reference:

```bash
$ ssh -i <PRIVATE-KEY> ubuntu@<PUBLIC_DNS_NAME>
```

or goto EC2 instances and locate your WinstarCloud PE v1.4 instance. 
Then select **Actions -> Connect** and follow instructions provided in **Connect To Your Instance** dialog.

#### Upgrade WinstarCloud PE package 

In the console execute the following command:

```bash
$ sudo tb-update-pkg.sh
```

The output should be like:

```text
Updating WinstarCloud Professional Edition...
Installing WinstarCloud PE package...
(Reading database ... 104150 files and directories currently installed.)
Preparing to unpack /tmp/tb.deb ...
Unpacking winstarcloud (2.0.2PE-1) over (1.4.0PE-1) ...
Setting up winstarcloud (2.0.2PE-1) ...
```

**NOTE:** Package installer will ask you to merge your winstarcloud.conf configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.conf'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.conf (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

**NOTE:** Package installer will ask you to merge your winstarcloud.yml configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.yml'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.yml (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

After installation your previous configuration will be stored in the following files:

```bash
/usr/share/winstarcloud/conf/winstarcloud.conf.dpkg-old
/usr/share/winstarcloud/conf/winstarcloud.yml.dpkg-old
```

If you changed configuration files previously you can compare new configuration with the old one in order to restore your configuration values.

At least the following configuration parameters should be restored:

- edit **/usr/share/winstarcloud/conf/winstarcloud.conf**, for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.conf
```

- locate and replace ```-Dplatform=deb``` with ```-Dplatform=ami-pe-cassandra```. The final line should be the following:

```
   ...
   export JAVA_OPTS="$JAVA_OPTS -Dplatform=ami-pe-cassandra -Dinstall.data_dir=/usr/share/winstarcloud/data"
   ...
```

- edit **/usr/share/winstarcloud/conf/winstarcloud.yml**. for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.yml
```

- locate the following lines:

```
   database:
     type: "${DATABASE_TYPE:sql}" # cassandra OR sql
```

- change ```database.type``` value from ```sql``` to ```cassandra```:

```
   database:
     type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Upgrade Database

Execute database upgrade using the following command:

```bash
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=1.4.0
```

The output should be like:

```text
 ===================================================
 :: WinstarCloud Professional Edition ::       (v2.0.2PE)
 ===================================================

Starting WinstarCloud Upgrade from version 1.4.0 ...
Upgrading WinstarCloud from version 1.4.0 to 2.0.0 ...
Updating schema ...
Schema updated.
Updating data from version 1.4.0 to 2.0.0 ...
Updating system data...
Upgrading WinstarCloud from version 2.0.0 to 2.0.0PE ...
Updating schema ...
Schema updated.
Updating converters ...
Converters updated.
Updating data from version 2.0.0 to 2.0.0PE ...
Upgrade finished successfully!
WinstarCloud upgraded successfully!
```

In case of any **failures** during database upgrade **Please contact [support@winstarcloud.io](mailto:support@winstarcloud.io)**.

#### Start WinstarCloud PE service

Execute the following command in order to start WinstarCloud service:

```bash
$ sudo service winstarcloud start
```

You can issue the following command in order to check if there are any errors on the backend side:

```bash
$ cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```


## Upgrading to WinstarCloud PE v.2.1.0

These steps are applicable for WinstarCloud PE with Cassandra v.2.0.2.

#### Connect to your WinstarCloud PE v.2.0.2 instance over SSH.

Below is example command as a reference:

```bash
$ ssh -i <PRIVATE-KEY> ubuntu@<PUBLIC_DNS_NAME>
```

or goto EC2 instances and locate your WinstarCloud PE v2.0.2 instance. 
Then select **Actions -> Connect** and follow instructions provided in **Connect To Your Instance** dialog.

#### Upgrade WinstarCloud PE package 

In the console execute the following command:

```bash
$ sudo tb-update-pkg.sh
```

The output should be like:

```text
Updating WinstarCloud Professional Edition...
Installing WinstarCloud PE package...
(Reading database ... 104150 files and directories currently installed.)
Preparing to unpack /tmp/tb.deb ...
Unpacking winstarcloud (2.1.0PE-1) over (2.0.2PE-1) ...
Setting up winstarcloud (2.1.0PE-1) ...
```

**NOTE:** Package installer will ask you to merge your winstarcloud.conf configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.conf'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.conf (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

**NOTE:** Package installer will ask you to merge your winstarcloud.yml configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.yml'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.yml (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

After installation your previous configuration will be stored in the following files:

```bash
/usr/share/winstarcloud/conf/winstarcloud.conf.dpkg-old
/usr/share/winstarcloud/conf/winstarcloud.yml.dpkg-old
```

If you changed configuration files previously you can compare new configuration with the old one in order to restore your configuration values.

At least the following configuration parameters should be restored:

- edit **/usr/share/winstarcloud/conf/winstarcloud.conf**, for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.conf
```

- locate and replace ```-Dplatform=deb``` with ```-Dplatform=ami-pe-cassandra```. The final line should be the following:

```
   ...
   export JAVA_OPTS="$JAVA_OPTS -Dplatform=ami-pe-cassandra -Dinstall.data_dir=/usr/share/winstarcloud/data"
   ...
```

- edit **/usr/share/winstarcloud/conf/winstarcloud.yml**. for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.yml
```

- locate the following lines:

```
   database:
     type: "${DATABASE_TYPE:sql}" # cassandra OR sql
```

- change ```database.type``` value from ```sql``` to ```cassandra```:

```
   database:
     type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Upgrade Database

Execute database upgrade using the following command:

```bash
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.0.0
```

The output should be like:

```text
 ===================================================
 :: WinstarCloud Professional Edition ::       (v2.1.0PE)
 ===================================================

Starting WinstarCloud Upgrade from version 2.0.0 ...
Upgrading WinstarCloud from version 2.0.0 to 2.1.0PE ...
Updating schema ...
Schema updated.
Updating converters ...
Converters updated.
Updating data from version 2.0.0 to 2.1.0PE ...
Upgrade finished successfully!
WinstarCloud upgraded successfully!
```

In case of any **failures** during database upgrade **Please contact [support@winstarcloud.io](mailto:support@winstarcloud.io)**.

#### Start WinstarCloud PE service

Execute the following command in order to start WinstarCloud service:

```bash
$ sudo service winstarcloud start
```

You can issue the following command in order to check if there are any errors on the backend side:

```bash
$ cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```

#### Install WinstarCloud Web Report Server

Execute the following command in order to install Report Server prerequisites:

```bash
$ sudo apt install -yq gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 \
     libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 \
     libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
     libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
     ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget fonts-roboto
```

Download WinstarCloud Web Report Server installation script:

```bash
$ cd ~
$ wget --quiet -O tb-install-web-report.sh https://winstarcloud.io/docs/user-guide/install/resources/tb-install-web-report.sh
$ chmod +x tb-install-web-report.sh
```

Execute installation script:

```bash
$ sudo ./tb-install-web-report.sh
```

The output should be like:

```text
Installing WinstarCloud Web Report Server...
Installing WinstarCloud Web Report Server package...
Selecting previously unselected package tb-web-report.
(Reading database ... 145356 files and directories currently installed.)
Preparing to unpack /tmp/tb-web-report.deb ...
Unpacking tb-web-report (2.1.0PE-1) ...
Setting up tb-web-report (2.1.0PE-1) ...
Processing triggers for systemd (229-4ubuntu21.1) ...
Processing triggers for ureadahead (0.100.0-19) ...
Latest version of WinstarCloud Web Report Server has been installed.
```

#### Start WinstarCloud Web Report Server

Execute the following command in order to start WinstarCloud Web Report Server:

```bash
$ sudo service tb-web-report start
```

## Upgrading to WinstarCloud PE v.2.1.3

These steps are applicable for WinstarCloud PE with Cassandra v.2.1.0.

#### Connect to your WinstarCloud PE v.2.1.0 instance over SSH.

Below is example command as a reference:

```bash
$ ssh -i <PRIVATE-KEY> ubuntu@<PUBLIC_DNS_NAME>
```

or goto EC2 instances and locate your WinstarCloud PE v2.1.0 instance. 
Then select **Actions -> Connect** and follow instructions provided in **Connect To Your Instance** dialog.

#### Upgrade WinstarCloud PE package 

In the console execute the following command:

```bash
$ sudo tb-update-pkg.sh
```

The output should be like:

```text
Updating WinstarCloud Professional Edition...
Installing WinstarCloud PE package...
(Reading database ... 104150 files and directories currently installed.)
Preparing to unpack /tmp/tb.deb ...
Unpacking winstarcloud (2.1.3PE-1) over (2.1.0PE-1) ...
Setting up winstarcloud (2.1.3PE-1) ...
```

**NOTE:** Package installer will ask you to merge your winstarcloud.conf configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.conf'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.conf (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

**NOTE:** Package installer will ask you to merge your winstarcloud.yml configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.yml'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.yml (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

After installation your previous configuration will be stored in the following files:

```bash
/usr/share/winstarcloud/conf/winstarcloud.conf.dpkg-old
/usr/share/winstarcloud/conf/winstarcloud.yml.dpkg-old
```

If you changed configuration files previously you can compare new configuration with the old one in order to restore your configuration values.

At least the following configuration parameters should be restored:

- edit **/usr/share/winstarcloud/conf/winstarcloud.conf**, for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.conf
```

- locate and replace ```-Dplatform=deb``` with ```-Dplatform=ami-pe-cassandra```. The final line should be the following:

```
   ...
   export JAVA_OPTS="$JAVA_OPTS -Dplatform=ami-pe-cassandra -Dinstall.data_dir=/usr/share/winstarcloud/data"
   ...
```

- edit **/usr/share/winstarcloud/conf/winstarcloud.yml**. for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.yml
```

- locate the following lines:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:sql}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:sql}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

- change ```database.entities.type``` and ```database.ts.type``` values from ```sql``` to ```cassandra```:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

#### Upgrade Database

Execute database upgrade using the following command:

```bash
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.0.0
```

The output should be like:

```text
 ===================================================
 :: WinstarCloud Professional Edition ::       (v2.1.3PE)
 ===================================================

Starting WinstarCloud Upgrade from version 2.0.0 ...
Upgrading WinstarCloud from version 2.0.0 to 2.1.1 ...
Updating schema ...
Schema updated.
Upgrading WinstarCloud from version 2.1.1 to 2.1.2 ...
Upgrading Cassandra DataBase from version 2.1.1 to 2.1.2 ...
Dumping entity views ...
Entity views dumped.
Updating schema ...
Schema updated.
Restoring entity views ...
Entity views restored.
Upgrading WinstarCloud from version 2.1.2 to 2.1.3PE ...
Updating schema ...
Schema updated.
Updating converters ...
Converters updated.
Updating data from version 2.1.2 to 2.1.3PE ...
Updating system data...
Upgrade finished successfully!
WinstarCloud upgraded successfully!
```

In case of any **failures** during database upgrade **Please contact [support@winstarcloud.io](mailto:support@winstarcloud.io)**.

#### Start WinstarCloud PE service

Execute the following command in order to start WinstarCloud service:

```bash
$ sudo service winstarcloud start
```

You can issue the following command in order to check if there are any errors on the backend side:

```bash
$ cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```

## Upgrading to WinstarCloud PE v.2.2.0

These steps are applicable for WinstarCloud PE with Cassandra v.2.1.3.

#### Connect to your WinstarCloud PE v.2.1.3 instance over SSH.

Below is example command as a reference:

```bash
$ ssh -i <PRIVATE-KEY> ubuntu@<PUBLIC_DNS_NAME>
```

or goto EC2 instances and locate your WinstarCloud PE v2.1.3 instance. 
Then select **Actions -> Connect** and follow instructions provided in **Connect To Your Instance** dialog.

#### Upgrade WinstarCloud PE package 

In the console execute the following command:

```bash
$ sudo tb-update-pkg.sh
```

The output should be like:

```text
Updating WinstarCloud Professional Edition...
Installing WinstarCloud PE package...
(Reading database ... 196038 files and directories currently installed.)
Preparing to unpack winstarcloud.deb ...
Unpacking winstarcloud (2.2.0PE-1) over (2.1.3PE-1) ...
Setting up winstarcloud (2.2.0PE-1) ...
```

**NOTE:** Package installer will ask you to merge your winstarcloud.yml configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.yml'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.yml (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

After installation your previous configuration will be stored in the following files:

```bash
/usr/share/winstarcloud/conf/winstarcloud.yml.dpkg-old
```

If you changed configuration files previously you can compare new configuration with the old one in order to restore your configuration values.

At least the following configuration parameters should be restored:

- edit **/usr/share/winstarcloud/conf/winstarcloud.yml**. for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.yml
```

- locate the following lines:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:sql}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:sql}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

- change ```database.entities.type``` and ```database.ts.type``` values from ```sql``` to ```cassandra```:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

#### Upgrade Database

Execute database upgrade using the following command:

```bash
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.0.0
```

The output should be like:

```text
 ===================================================
 :: WinstarCloud Professional Edition ::       (v2.2.0PE)
 ===================================================

Starting WinstarCloud Upgrade from version 2.0.0 ...
Upgrading WinstarCloud from version 2.0.0 to 2.1.1 ...
Updating schema ...
Schema updated.
Upgrading WinstarCloud from version 2.1.1 to 2.1.2 ...
Upgrading Cassandra DataBase from version 2.1.1 to 2.1.2 ...
Dumping entity views ...
Entity views dumped.
Updating schema ...
Schema updated.
Restoring entity views ...
Entity views restored.
Upgrading WinstarCloud from version 2.1.3 to 2.2.0 ...
Upgrading WinstarCloud from version 2.2.0 to 2.2.0PE ...
Updating schema ...
Schema updated.
Updating converters ...
Converters updated.
Updating data from version 2.2.0 to 2.2.0PE ...
Updating system data...
Upgrade finished successfully!
WinstarCloud upgraded successfully!
```

In case of any **failures** during database upgrade **Please contact [support@winstarcloud.io](mailto:support@winstarcloud.io)**.

#### Start WinstarCloud PE service

Execute the following command in order to start WinstarCloud service:

```bash
$ sudo service winstarcloud start
```

You can issue the following command in order to check if there are any errors on the backend side:

```bash
$ cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```

#### Upgrade WinstarCloud Web Report Server to v.2.2.0

Download WinstarCloud Web Report Server installation script:

```bash
$ cd ~
$ wget --quiet -O tb-install-web-report.sh https://winstarcloud.io/docs/user-guide/install/resources/tb-install-web-report.sh
$ chmod +x tb-install-web-report.sh
```

Execute installation script:

```bash
$ sudo ./tb-install-web-report.sh
```

The output should be like:

```text
Installing WinstarCloud Web Report Server...
Installing WinstarCloud Web Report Server package...
(Reading database ... 196038 files and directories currently installed.)
Preparing to unpack tb-web-report.deb ...
Unpacking tb-web-report (2.2.0PE-1) over (2.1.0PE-1) ...
Setting up tb-web-report (2.2.0PE-1) ...
Installing new version of config file /usr/share/tb-web-report/conf/tb-web-report.conf ...
Installing new version of config file /usr/share/tb-web-report/conf/custom-environment-variables.yml ...
Installing new version of config file /usr/share/tb-web-report/conf/default.yml ...
Installing new version of config file /usr/share/tb-web-report/conf/logger.js ...
Processing triggers for systemd (229-4ubuntu21.10) ...
Processing triggers for ureadahead (0.100.0-19) ...
Latest version of WinstarCloud Web Report Server has been installed.
```

#### Optional. Install Noto fonts (to support Japanese, Chinese. etc.)

This step is optional and needed is you want to support all languages (like Japanese, Chinese. etc.) for your reports.

Execute the following commands:

```bash
mkdir ~/noto
cd ~/noto
wget https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip
unzip NotoSansCJKjp-hinted.zip
sudo mkdir -p /usr/share/fonts/noto
sudo cp *.otf /usr/share/fonts/noto
sudo chmod 655 -R /usr/share/fonts/noto/
sudo fc-cache -fv
cd ~
rm -rf ~/noto
```

#### Start WinstarCloud Web Report Server

Execute the following command in order to start WinstarCloud Web Report Server:

```bash
$ sudo service tb-web-report start
```

## Upgrading to WinstarCloud PE v.2.2.1

These steps are applicable for WinstarCloud PE with Cassandra v.2.2.0.

#### Connect to your WinstarCloud PE v.2.2.0 instance over SSH.

Below is example command as a reference:

```bash
$ ssh -i <PRIVATE-KEY> ubuntu@<PUBLIC_DNS_NAME>
```

or goto EC2 instances and locate your WinstarCloud PE v2.2.0 instance. 
Then select **Actions -> Connect** and follow instructions provided in **Connect To Your Instance** dialog.

#### Upgrade WinstarCloud PE package 

In the console execute the following command:

```bash
$ sudo tb-update-pkg.sh
```

The output should be like:

```text
Updating WinstarCloud Professional Edition...
Installing WinstarCloud PE package...
(Reading database ... 221177 files and directories currently installed.)
Preparing to unpack winstarcloud.deb ...
Unpacking winstarcloud (2.2.1PE~RC-1) over (2.2.0PE-1) ...
Setting up winstarcloud (2.2.1PE~RC-1) ...
```

**NOTE:** Package installer will ask you to merge your winstarcloud.yml configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.yml'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.yml (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

After installation your previous configuration will be stored in the following files:

```bash
/usr/share/winstarcloud/conf/winstarcloud.yml.dpkg-old
```

If you changed configuration files previously you can compare new configuration with the old one in order to restore your configuration values.

At least the following configuration parameters should be restored:

- edit **/usr/share/winstarcloud/conf/winstarcloud.yml**. for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.yml
```

- locate the following lines:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:sql}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:sql}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

- change ```database.entities.type``` and ```database.ts.type``` values from ```sql``` to ```cassandra```:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

#### Start WinstarCloud PE service

Execute the following command in order to start WinstarCloud service:

```bash
$ sudo service winstarcloud start
```

You can issue the following command in order to check if there are any errors on the backend side:

```bash
$ cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```

## Upgrading to WinstarCloud PE v.2.3.0

These steps are applicable for the following WinstarCloud PE versions:

- WinstarCloud Professional Edition with Cassandra v.2.2.0PE
- WinstarCloud PE Maker v.2.2.1PEMK
- WinstarCloud PE Prototype v.2.2.1PEPT
- WinstarCloud PE Startup v.2.2.1PEST
- WinstarCloud PE Business v.2.2.1PEBS
- WinstarCloud PE Enterprise v.2.2.1PE

#### Connect to your WinstarCloud PE instance over SSH.

Below is example command as a reference:

```bash
$ ssh -i <PRIVATE-KEY> ubuntu@<PUBLIC_DNS_NAME>
```

or goto EC2 instances and locate your WinstarCloud PE instance. 
Then select **Actions -> Connect** and follow instructions provided in **Connect To Your Instance** dialog.

#### Upgrade WinstarCloud PE package 

In the console execute the following command:

```bash
$ sudo tb-update-pkg.sh
```

The output should be like:

```text
Updating WinstarCloud Professional Edition...
Installing WinstarCloud PE package...
(Reading database ... 221177 files and directories currently installed.)
Preparing to unpack winstarcloud.deb ...
Unpacking winstarcloud (2.3.0PE-1) over (2.2.1PE~RC-1) ...
Setting up winstarcloud (2.3.0PE-1) ...
```

**NOTE:** Package installer may ask you to merge your winstarcloud.conf configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.conf'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.conf (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

**NOTE:** Package installer may ask you to merge your winstarcloud.yml configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.yml'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.yml (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

After installation your previous configuration will be stored in the following files:

```bash
/usr/share/winstarcloud/conf/winstarcloud.conf.dpkg-old
/usr/share/winstarcloud/conf/winstarcloud.yml.dpkg-old
```

If you changed configuration files previously you can compare new configuration with the old one in order to restore your configuration values.

At least the following configuration parameters should be restored:

- edit **/usr/share/winstarcloud/conf/winstarcloud.conf**, for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.conf
```

- locate and replace ```-Dplatform=deb``` with the following value:

For **WinstarCloud Professional Edition with Cassandra** or **WinstarCloud PE Enterprise**: ```-Dplatform=ami-pe-cassandra```

For  **WinstarCloud PE Maker**: ```-Dplatform=ami-pe-mk```

For  **WinstarCloud PE Prototype**: ```-Dplatform=ami-pe-pt```

For  **WinstarCloud PE Startup**: ```-Dplatform=ami-pe-st```

For  **WinstarCloud PE Business**: ```-Dplatform=ami-pe-bs```

The final line should be like this (example for **WinstarCloud Professional Edition with Cassandra**):

```
   ...
   export JAVA_OPTS="$JAVA_OPTS -Dplatform=ami-pe-cassandra -Dinstall.data_dir=/usr/share/winstarcloud/data"
   ...
```

- edit **/usr/share/winstarcloud/conf/winstarcloud.yml**. for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.yml
```

For **WinstarCloud PE Maker**, **WinstarCloud PE Prototype** or **WinstarCloud PE Startup**:

{% include templates/disable-hsqldb.md %}  

{% include templates/enable-postgresql.md %} 

For **WinstarCloud Professional Edition with Cassandra**, **WinstarCloud PE Business** or **WinstarCloud PE Enterprise**:

- locate the following lines:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:sql}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:sql}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

and change ```database.entities.type``` and ```database.ts.type``` values from ```sql``` to ```cassandra```:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

#### Upgrade Database

Execute database upgrade using the following command:

```bash
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.2.0
```

The output should be like:

```text
 ===================================================
 :: WinstarCloud Professional Edition ::       (v2.3.0PE)
 ===================================================

Starting WinstarCloud Upgrade from version 2.2.0 ...
Upgrading WinstarCloud from version 2.2.0 to 2.3.0PE ...
Updating schema ...
Schema updated.
Updating converters ...
Converters updated.
Updating data from version 2.2.0 to 2.3.0PE ...
Updating system data...
Upgrade finished successfully!
WinstarCloud upgraded successfully!
```

In case of any **failures** during database upgrade **Please contact [support@winstarcloud.io](mailto:support@winstarcloud.io)**.

#### Start WinstarCloud PE service

Execute the following command in order to start WinstarCloud service:

```bash
$ sudo service winstarcloud start
```

You can issue the following command in order to check if there are any errors on the backend side:

```bash
$ cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```

## Upgrading to WinstarCloud PE v.2.3.1

These steps are applicable for the following WinstarCloud PE versions:

- WinstarCloud Professional Edition with Cassandra v.2.2.0PE
- WinstarCloud PE Maker v.2.3.0PEMK
- WinstarCloud PE Prototype v.2.3.0PEPT
- WinstarCloud PE Startup v.2.3.0PEST
- WinstarCloud PE Business v.2.3.0PEBS
- WinstarCloud PE Enterprise v.2.3.0PE

#### Connect to your WinstarCloud PE instance over SSH.

Below is example command as a reference:

```bash
$ ssh -i <PRIVATE-KEY> ubuntu@<PUBLIC_DNS_NAME>
```

or goto EC2 instances and locate your WinstarCloud PE instance. 
Then select **Actions -> Connect** and follow instructions provided in **Connect To Your Instance** dialog.

#### Upgrade WinstarCloud PE package 

In the console execute the following command:

```bash
$ sudo tb-update-pkg.sh
```

The output should be like:

```text
Updating WinstarCloud Professional Edition...
Installing WinstarCloud PE package...
(Reading database ... 221177 files and directories currently installed.)
Preparing to unpack winstarcloud.deb ...
Unpacking winstarcloud (2.3.1PE-1) over (2.3.0PE-1) ...
Setting up winstarcloud (2.3.1PE-1) ...
```

**NOTE:** Package installer may ask you to merge your winstarcloud.conf configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.conf'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.conf (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

**NOTE:** Package installer may ask you to merge your winstarcloud.yml configuration.

```text
Configuration file '/usr/share/winstarcloud/conf/winstarcloud.yml'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** winstarcloud.yml (Y/I/N/O/D/Z) [default=N] ? Y
```

Select **install the package maintainer's version** by entering **Y** or **I**.

After installation your previous configuration will be stored in the following files:

```bash
/usr/share/winstarcloud/conf/winstarcloud.conf.dpkg-old
/usr/share/winstarcloud/conf/winstarcloud.yml.dpkg-old
```

If you changed configuration files previously you can compare new configuration with the old one in order to restore your configuration values.

At least the following configuration parameters should be restored:

- edit **/usr/share/winstarcloud/conf/winstarcloud.conf**, for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.conf
```

- locate and replace ```-Dplatform=deb``` with the following value:

For **WinstarCloud Professional Edition with Cassandra** or **WinstarCloud PE Enterprise**: ```-Dplatform=ami-pe-cassandra```

For  **WinstarCloud PE Maker**: ```-Dplatform=ami-pe-mk```

For  **WinstarCloud PE Prototype**: ```-Dplatform=ami-pe-pt```

For  **WinstarCloud PE Startup**: ```-Dplatform=ami-pe-st```

For  **WinstarCloud PE Business**: ```-Dplatform=ami-pe-bs```

The final line should be like this (example for **WinstarCloud Professional Edition with Cassandra**):

```
   ...
   export JAVA_OPTS="$JAVA_OPTS -Dplatform=ami-pe-cassandra -Dinstall.data_dir=/usr/share/winstarcloud/data"
   ...
```

- edit **/usr/share/winstarcloud/conf/winstarcloud.yml**. for ex.:

```bash
$ sudo nano /usr/share/winstarcloud/conf/winstarcloud.yml
```

For **WinstarCloud PE Maker**, **WinstarCloud PE Prototype** or **WinstarCloud PE Startup**:

{% include templates/disable-hsqldb.md %}  

{% include templates/enable-postgresql.md %} 

For **WinstarCloud Professional Edition with Cassandra**, **WinstarCloud PE Business** or **WinstarCloud PE Enterprise**:

- locate the following lines:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:sql}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:sql}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

and change ```database.entities.type``` and ```database.ts.type``` values from ```sql``` to ```cassandra```:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

#### Upgrade Database

Execute database upgrade using the following command:

```bash
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.3.0
```

The output should be like:

```text
 ===================================================
 :: WinstarCloud Professional Edition ::       (v2.3.1PE)
 ===================================================

Starting WinstarCloud Upgrade from version 2.3.0 ...
Upgrading WinstarCloud from version 2.3.0 to 2.3.1 ...
Upgrading WinstarCloud from version 2.3.1 to 2.3.1PE ...
Updating schema ...
Schema updated.
Updating converters ...
Converters updated.
Updating data from version 2.3.1 to 2.3.1PE ...
Updating system data...
Upgrade finished successfully!
WinstarCloud upgraded successfully!
```

In case of any **failures** during database upgrade **Please contact [support@winstarcloud.io](mailto:support@winstarcloud.io)**.

#### Start WinstarCloud PE service

Execute the following command in order to start WinstarCloud service:

```bash
$ sudo service winstarcloud start
```

You can issue the following command in order to check if there are any errors on the backend side:

```bash
$ cat /var/log/winstarcloud/winstarcloud.log | grep ERROR
```

#### Upgrade WinstarCloud Web Report Server to v.2.3.1

Download WinstarCloud Web Report Server installation script:

```bash
$ cd ~
$ wget --quiet -O tb-install-web-report.sh https://winstarcloud.io/docs/user-guide/install/resources/tb-install-web-report.sh
$ chmod +x tb-install-web-report.sh
```

Execute installation script:

```bash
$ sudo ./tb-install-web-report.sh
```

The output should be like:

```text
Installing WinstarCloud Web Report Server...
Installing WinstarCloud Web Report Server package...
(Reading database ... 196038 files and directories currently installed.)
Preparing to unpack tb-web-report.deb ...
Unpacking tb-web-report (2.3.1PE-1) over (2.2.0PE-1) ...
Setting up tb-web-report (2.3.1PE-1) ...
Installing new version of config file /usr/share/tb-web-report/conf/tb-web-report.conf ...
Installing new version of config file /usr/share/tb-web-report/conf/custom-environment-variables.yml ...
Installing new version of config file /usr/share/tb-web-report/conf/default.yml ...
Installing new version of config file /usr/share/tb-web-report/conf/logger.js ...
Processing triggers for systemd (229-4ubuntu21.10) ...
Processing triggers for ureadahead (0.100.0-19) ...
Latest version of WinstarCloud Web Report Server has been installed.
```

#### Start WinstarCloud Web Report Server

Execute the following command in order to start WinstarCloud Web Report Server:

```bash
$ sudo service tb-web-report start
```