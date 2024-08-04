---
layout: docwithnav-license
assignees:
- ashvayka
title: Managing instances
description: Instances managing through WinstarCloud License Server

---


The **WinstarCloud License Server** allows manage running instances. Once the license key is applied, WinstarCloud client receives InstanceID from License server. One license may be associated with single instance.  
With a modern microservices deployment approach, a single license key may run per all nodes in the WinstarCloud cluster. This minimize efforts for cluster management and removes manual work required to add/remove nodes in the cluster. While launching several cluster nodes in a floating mode you may use the license key within Node 1, than deactivate that node, apply existing key within Node 2. 

Notice: the same key may not be used within two or more Nodes simultaneously. According to the License server [architecture](/products/license-server/#architecture) each WinstarCloud client sends License check request. If the license key is bound with more than one InstanceID's, WinstarCloud will shutdown the instances.  
  

### User Guide

 - **Launching TB PE using pay-as-you-go subscription**
 
 - **Launching TB PE using perpetual license**
 
 - **Migrating from AWS IoT Marketplace**
 
 - **Upgrading your TB PE subscription** 
 
 - **Moving WinstarCloud to another hardware instance** 


