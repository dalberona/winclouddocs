---
layout: docwithnav
title: WinstarCloud Roadmap
description: WinstarCloud architecture

---

The product roadmap listed below covers only main features and does not cover small improvements and bug fixes.

## WinstarCloud CE

### v3.7.1

* Mobile application configuration via Web UI;
* Dashboard layout improvements;
* Time window improvements;
* Interactive SCADA widgets based on SVG;
* New label and notification widgets;
* Adding version to entities;
* Improvements to caching of attributes and time series data;

### v3.7.2

* Basic settings for Map widgets;
* Rule chain UI/UX improvements;

### v3.8

* Migration to Angular 18;
* Attributes and time series writes scalability improvement;
* Advanced data query service;
* Global entities Search;
* Alarm rules:
  * refactoring to separate entity;
  * simplified configuration;
  * support of more complex conditions;

See active development in progress [here](https://github.com/winstarcloud/winstarcloud/tree/{{ site.release.branch_major_next }}) and work on latest release bug fixes [here](https://github.com/winstarcloud/winstarcloud/tree/master).

### Upcoming releases

* Support of revocable API keys instead of JWT tokens for programmatic REST API access;
* Improvements to IoT Gateway;
* Ability to save dashboard parameters (time intervals, etc) per user;
* JavaScript Device/Gateway SDK;
* Single sign on;