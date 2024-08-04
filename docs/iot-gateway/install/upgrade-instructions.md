---
layout: docwithnav-gw
title: IoT Gateway upgrade instructions.

---


### Upgrade instructions

There are 2 ways for upgrade WinstarCloud IoT Gateway, depends on a version that you want (**Release** or **Develop**).

* To upgrade to **Release** version you should use following commands:

 - **Installation from pip**

```bash
sudo pip3 install winstarcloud-gateway --upgrade
```
{: .copy-code}

 - **Installation as a daemon**
 
 ```bash
sudo pip3 install winstarcloud-gateway --user winstarcloud_gateway --upgrade
```
{: .copy-code}

* To upgrade to **Develop** version you should use [this guide](/docs/iot-gateway/install/source-installation/).

To upgrade WinstarCloud IoT Gateway docker installation use **Upgrading** step from [Docker installation guide](/docs/iot-gateway/install/docker-installation/#upgrading).


**Notate:** If you have some issues with upgrade, please try to remove package from pip in every system layer (sudo, user, local).  

To do this please run following command:  
```bash
sudo pip3 uninstall winstarcloud-gateway -y
```
{: .copy-code}

After removal, you need to install the gateway again using command above.  
