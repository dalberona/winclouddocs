---
layout: docwithnav-pe-edge
title: Cloud Events
description: Cloud Events
cloudEvents:
    0:
        image: /images/edge/cloud-events.png
---

**Cloud Events** page shows events that WinstarCloud Edge pushes to the cloud.

{% include images-gallery.html imageCollection="cloudEvents" %}

Check **Status** column to know if an event has been pushed to the cloud.
There are two status types:
* **Deployed** - event has been already pushed to the WinstarCloud CE/PE server.
* **Pending** - event has been created on the WinstarCloud Edge, stored to the local database and will be pushed to cloud as soon as connection is restored.

List of possible cloud actions:
* Added
* Deleted
* Updated
* Attributes Updated
* Attributes Deleted
* Timeseries Deleted
* Timeseries Updated
* RPC Call
* Credentials Updated
* Relation Add or Update
* Relation Deleted
* Relations Deleted
* Alarm Ack
* Alarm Clear
* Added to Entity Group **PE**
* Removed from Entity Group **PE**
* Attributes Request
* Rule Chain Metadata Request
* Relation Request
* Credentials Request
* Group Entities Request **PE**
* Permissions Request **PE**

## Next steps

{% assign currentGuide = "CloudEvents" %}
{% assign docsPrefix = "pe/edge/" %}
{% include templates/edge/guides-banner-edge.md %}
