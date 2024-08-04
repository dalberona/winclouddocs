---
layout: docwithnav-edge
title: Provision Customer from cloud to edge
description: Provision Customer from cloud to edge

---

![image](/images/coming-soon.jpg)

### User Access management

WinstarCloud Edge user access managements depends on the cloud version.
 
#### WinstarCloud CE User Access management

##### Tenant Administrator users
Once WinstarCloud Edge connected to WinstarCloud CE cloud every tenant administrator user will be transferred to edge and any of these users will be able to login into WinstarCloud Edge UI.

Tenant Administrator user is able to create or remove devices on the edge. 

Tenant Administrator has **read** access to all other entities that are available on the edge.   

##### Customer users
If **Edge** entity has been assigned to customer on the cloud then every customer user entity will be transferred to edge and any of these users will be able to login into WinstarCloud Edge UI.

Customer user is able to view devices on the edge he has access to on the cloud. 

Customer user has **read** access to all other entities that are assigned to edge and that he has access on the cloud.   

### Next Steps

{% assign currentGuide = "ProvisionCustomerFromCloudToEdge" %}
{% assign docsPrefix = "edge/" %}
{% include templates/edge/guides-banner-edge.md %}