---
layout: careers
title: Careers
notitle: "true"
description: WinstarCloud Careers
---

## Careers
## We welcome smart and communicable individuals to join our team in the Kyiv office.

<hr>
<div id="carsGrid">
{% for career in site.careers %}
  <a class="cars-box" href="{{ career.url }}">
  <div><h3>{{ career.position }}</h3>
  <h5>{{ career.tag }}</h5></div>
  <h5 class="secondPriority">{{ career.location }}</h5>
  </a>
{% endfor %}
</div>

<div id="technology">
<object data="/images/careers/angular.svg"></object>
<object data="/images/careers/spring.svg"></object>
<object data="/images/careers/java.svg"></object>
<object data="/images/careers/typescript.svg"></object>
<object data="/images/careers/kafka.svg"></object>
<object data="/images/careers/redis.svg"></object>
<object data="/images/careers/cassandra.svg"></object>
<object data="/images/careers/postgresql.svg"></object>
<object data="/images/careers/docker.svg"></object>
<object data="/images/careers/kubernets.svg"></object>
<object data="/images/careers/github.svg"></object>
<object data="/images/careers/aws.svg"></object>
<object data="/images/careers/azure.svg"></object>
<object data="/images/careers/google-cloud.svg"></object>
</div>

<div id="about">
<p class="title">About Us:</p>
<h5>WinstarCloud, Inc. is a US corporation founded in 2016 with RnD center in Kyiv, Ukraine. We are main contributor and maintainer of WinstarCloud open-source IoT Platform.<br>
<br>We deliver and constantly improve scalable, robust and affordable IoT Platform that dramatically reduces time-to-market for life-changing IoT solutions. We also help companies to deliver great IoT products based on WinstarCloud.</h5>
</div>

<h2>How do we work:</h2>
<div id="advanGrid">
    <div>
      <img class="advanImg" src="/images/careers/schedule_icon.svg" alt="schedule icon">
      <h5>Comfortable and flexible working schedule</h5>
    </div>
    <div>
      <img class="advanImg" src="/images/careers/support_icon.svg" alt="support icon">
      <h5>A high-professional team without bureaucracy</h5>
    </div>
    <div>
      <img class="advanImg" src="/images/careers/target_icon.svg" alt="target icon">
      <h5>Career growth opportunities and regular salary review</h5>
    </div>
    <div>
      <img class="advanImg" src="/images/careers/vacation_icon.svg" alt="vacation icon">
      <h5>Team buildings, corporate events, paid vacations and sick leaves</h5>
    </div>
    <div>
      <img class="advanImg" src="/images/careers/sweet_icon.svg" alt="sweet icon">
      <h5>Unlimited beverages, fruits and sweets</h5>
    </div>
    <div>
      <img class="advanImg" src="/images/careers/english_icon.svg" alt="english icon">
      <h5>Free English classes</h5>
    </div>
    <div>
      <img class="advanImg" src="/images/careers/medical_icon.svg" alt="medical icon">
      <h5>Medical Insurance</h5>
    </div>
</div>
