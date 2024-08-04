---
layout: docwithnav
assignees:
- ashvayka
title: Old Upgrade instructions
description: WinstarCloud IoT platform upgrade instructions

---

<h3>In order to update to new WinstarCloud releases, please follow
these <a style="pointer-events: all;" href="/docs/user-guide/install/upgrade-instructions/">CE</a> and 
<a style="pointer-events: all;" href="/docs/user-guide/install/pe/upgrade-instructions/">PE</a> instructions</h3>

<ul id="markdown-toc">
  <li>
    <a href="#upgrading-to-103" id="markdown-toc-upgrading-to-103">Upgrading to 1.0.3</a>
  </li>
  <li>
    <a href="#upgrading-to-110" id="markdown-toc-upgrading-to-110">Upgrading to 1.1.0</a>
  </li>
  <li>
    <a href="#upgrading-to-120" id="markdown-toc-upgrading-to-120">Upgrading to 1.2.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos" id="markdown-toc-ubuntucentos">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows" id="markdown-toc-windows">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-121" id="markdown-toc-upgrading-to-121">Upgrading to 1.2.1</a>
    <ul>
        <li>
            <a href="#ubuntucentos-1" id="markdown-toc-ubuntucentos-1">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-1" id="markdown-toc-windows-1">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-122" id="markdown-toc-upgrading-to-122">Upgrading to 1.2.2</a>
    <ul>
        <li>
            <a href="#ubuntucentos-2" id="markdown-toc-ubuntucentos-2">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-2" id="markdown-toc-windows-2">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-123" id="markdown-toc-upgrading-to-123">Upgrading to 1.2.3</a>
    <ul>
        <li>
            <a href="#ubuntucentos-3" id="markdown-toc-ubuntucentos-3">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-3" id="markdown-toc-windows-3">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-130" id="markdown-toc-upgrading-to-130">Upgrading to 1.3.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos-4" id="markdown-toc-ubuntucentos-4">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-4" id="markdown-toc-windows-4">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-131" id="markdown-toc-upgrading-to-131">Upgrading to 1.3.1</a>
    <ul>
        <li>
            <a href="#ubuntucentos-5" id="markdown-toc-ubuntucentos-5">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-5" id="markdown-toc-windows-5">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-140" id="markdown-toc-upgrading-to-140">Upgrading to 1.4.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos-6" id="markdown-toc-ubuntucentos-6">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-6" id="markdown-toc-windows-6">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-200" id="markdown-toc-upgrading-to-200">Upgrading to 2.0.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos-7" id="markdown-toc-ubuntucentos-7">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-7" id="markdown-toc-windows-7">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-201" id="markdown-toc-upgrading-to-201">Upgrading to 2.0.1</a>
    <ul>
        <li>
            <a href="#ubuntucentos-8" id="markdown-toc-ubuntucentos-8">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-8" id="markdown-toc-windows-8">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-202" id="markdown-toc-upgrading-to-202">Upgrading to 2.0.2</a>
    <ul>
        <li>
            <a href="#ubuntucentos-9" id="markdown-toc-ubuntucentos-9">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-9" id="markdown-toc-windows-9">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-203" id="markdown-toc-upgrading-to-203">Upgrading to 2.0.3</a>
    <ul>
        <li>
            <a href="#ubuntucentos-10" id="markdown-toc-ubuntucentos-10">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-10" id="markdown-toc-windows-10">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-210" id="markdown-toc-upgrading-to-210">Upgrading to 2.1.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos-11" id="markdown-toc-ubuntucentos-11">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-11" id="markdown-toc-windows-11">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-220" id="markdown-toc-upgrading-to-220">Upgrading to 2.2.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos-12" id="markdown-toc-ubuntucentos-12">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-12" id="markdown-toc-windows-12">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-230" id="markdown-toc-upgrading-to-230">Upgrading to 2.3.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos-13" id="markdown-toc-ubuntucentos-13">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-13" id="markdown-toc-windows-13">Windows</a>
        </li>
    </ul>
  </li>  
  <li>
    <a href="#upgrading-to-231" id="markdown-toc-upgrading-to-231">Upgrading to 2.3.1</a>
    <ul>
        <li>
            <a href="#ubuntucentos-14" id="markdown-toc-ubuntucentos-14">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-14" id="markdown-toc-windows-14">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-240" id="markdown-toc-upgrading-to-240">Upgrading to 2.4.0</a>
    <ul>
        <li>
            <a href="#ubuntucentos-15" id="markdown-toc-ubuntucentos-15">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-15" id="markdown-toc-windows-15">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-241" id="markdown-toc-upgrading-to-241">Upgrading to 2.4.1</a>
    <ul>
        <li>
            <a href="#ubuntucentos-16" id="markdown-toc-ubuntucentos-16">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-16" id="markdown-toc-windows-16">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-2421" id="markdown-toc-upgrading-to-2421">Upgrading to 2.4.2.1</a>
    <ul>
        <li>
            <a href="#ubuntucentos-17" id="markdown-toc-ubuntucentos-17">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-17" id="markdown-toc-windows-17">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-243" id="markdown-toc-upgrading-to-243">Upgrading to 2.4.3</a>
    <ul>
        <li>
            <a href="#ubuntucentos-18" id="markdown-toc-ubuntucentos-18">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-18" id="markdown-toc-windows-18">Windows</a>
        </li>
    </ul>
  </li>
  <li>
    <a href="#upgrading-to-25" id="markdown-toc-upgrading-to-25">Upgrading to 2.5</a>
    <ul>
        <li>
            <a href="#ubuntucentos-19" id="markdown-toc-ubuntucentos-19">Ubuntu/CentOS</a>
        </li>
        <li>
            <a href="#windows-19" id="markdown-toc-windows-19">Windows</a>
        </li>
    </ul>
  </li>
  <li>
      <a href="#upgrading-to-251" id="markdown-toc-upgrading-to-251">Upgrading to 2.5.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-251" id="markdown-toc-ubuntucentos-20">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-251" id="markdown-toc-windows-20">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-252" id="markdown-toc-upgrading-to-252">Upgrading to 2.5.2</a>
      <ul>
          <li>
              <a href="#ubuntucentos-252" id="markdown-toc-ubuntucentos-252">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-252" id="markdown-toc-windows-252">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-253" id="markdown-toc-upgrading-to-253">Upgrading to 2.5.3</a>
      <ul>
          <li>
              <a href="#ubuntucentos-253" id="markdown-toc-ubuntucentos-253">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-253" id="markdown-toc-windows-253">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-254" id="markdown-toc-upgrading-to-254">Upgrading to 2.5.4</a>
      <ul>
          <li>
              <a href="#ubuntucentos-254" id="markdown-toc-ubuntucentos-254">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-254" id="markdown-toc-windows-254">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-255" id="markdown-toc-upgrading-to-255">Upgrading to 2.5.5</a>
      <ul>
          <li>
              <a href="#ubuntucentos-255" id="markdown-toc-ubuntucentos-255">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-255" id="markdown-toc-windows-255">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-256" id="markdown-toc-upgrading-to-256">Upgrading to 2.5.6</a>
      <ul>
          <li>
              <a href="#ubuntucentos-256" id="markdown-toc-ubuntucentos-256">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-256" id="markdown-toc-windows-256">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-30" id="markdown-toc-upgrading-to-30">Upgrading to 3.0</a>
      <ul>
          <li>
              <a href="#ubuntucentos-30" id="markdown-toc-ubuntucentos-30">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-30" id="markdown-toc-windows-30">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-301" id="markdown-toc-upgrading-to-30">Upgrading to 3.0.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-301" id="markdown-toc-ubuntucentos-301">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-301" id="markdown-toc-windows-301">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-31" id="markdown-toc-upgrading-to-31">Upgrading to 3.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-31" id="markdown-toc-ubuntucentos-31">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-31" id="markdown-toc-windows-31">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-311" id="markdown-toc-upgrading-to-311">Upgrading to 3.1.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-311" id="markdown-toc-ubuntucentos-311">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-311" id="markdown-toc-windows-311">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-32" id="markdown-toc-upgrading-to-32">Upgrading to 3.2</a>
      <ul>
          <li>
              <a href="#ubuntucentos-32" id="markdown-toc-ubuntucentos-32">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-32" id="markdown-toc-windows-32">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-321" id="markdown-toc-upgrading-to-321">Upgrading to 3.2.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-321" id="markdown-toc-ubuntucentos-321">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-321" id="markdown-toc-windows-321">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-322" id="markdown-toc-upgrading-to-322">Upgrading to 3.2.2</a>
      <ul>
          <li>
              <a href="#ubuntucentos-322" id="markdown-toc-ubuntucentos-322">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-322" id="markdown-toc-windows-322">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-33" id="markdown-toc-upgrading-to-33">Upgrading to 3.3</a>
      <ul>
          <li>
              <a href="#ubuntucentos-33" id="markdown-toc-ubuntucentos-33">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-33" id="markdown-toc-windows-33">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-331" id="markdown-toc-upgrading-to-331">Upgrading to 3.3.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-331" id="markdown-toc-ubuntucentos-331">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-331" id="markdown-toc-windows-331">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-332" id="markdown-toc-upgrading-to-332">Upgrading to 3.3.2</a>
      <ul>
          <li>
              <a href="#ubuntucentos-332" id="markdown-toc-ubuntucentos-332">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-332" id="markdown-toc-windows-332">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-333" id="markdown-toc-upgrading-to-333">Upgrading to 3.3.3</a>
      <ul>
          <li>
              <a href="#ubuntucentos-333" id="markdown-toc-ubuntucentos-333">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-333" id="markdown-toc-windows-333">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-334" id="markdown-toc-upgrading-to-334">Upgrading to 3.3.4</a>
      <ul>
          <li>
              <a href="#ubuntucentos-334" id="markdown-toc-ubuntucentos-334">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-334" id="markdown-toc-windows-334">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-3341" id="markdown-toc-upgrading-to-3341">Upgrading to 3.3.4.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-3341" id="markdown-toc-ubuntucentos-3341">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-3341" id="markdown-toc-windows-3341">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-34" id="markdown-toc-upgrading-to-34">Upgrading to 3.4</a>
      <ul>
          <li>
              <a href="#ubuntucentos-34" id="markdown-toc-ubuntucentos-34">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-34" id="markdown-toc-windows-34">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-341" id="markdown-toc-upgrading-to-341">Upgrading to 3.4.1</a>
      <ul>
          <li>
              <a href="#ubuntucentos-341" id="markdown-toc-ubuntucentos-341">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-341" id="markdown-toc-windows-341">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-342" id="markdown-toc-upgrading-to-342">Upgrading to 3.4.2</a>
      <ul>
          <li>
              <a href="#ubuntucentos-342" id="markdown-toc-ubuntucentos-342">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-342" id="markdown-toc-windows-342">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-343" id="markdown-toc-upgrading-to-343">Upgrading to 3.4.3</a>
      <ul>
          <li>
              <a href="#ubuntucentos-343" id="markdown-toc-ubuntucentos-343">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-343" id="markdown-toc-windows-343">Windows</a>
          </li>
      </ul>
  </li>
  <li>
      <a href="#upgrading-to-344" id="markdown-toc-upgrading-to-344">Upgrading to 3.4.4</a>
      <ul>
          <li>
              <a href="#ubuntucentos-344" id="markdown-toc-ubuntucentos-344">Ubuntu/CentOS</a>
          </li>
          <li>
              <a href="#windows-344" id="markdown-toc-windows-344">Windows</a>
          </li>
      </ul>
  </li>
  

</ul>

## Upgrading to 1.0.3

These steps are applicable for 1.0, 1.0.1 and 1.0.2 WinstarCloud versions.

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-0-3
winstarcloud-download-1-0-3-ubuntu,Ubuntu,shell,resources/1.0.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.0.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-0-3-centos,CentOS,shell,resources/1.0.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.0.3/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-0-3
winstarcloud-installation-1-0-3-ubuntu,Ubuntu,shell,resources/1.0.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.0.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-0-3-centos,CentOS,shell,resources/1.0.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.0.3/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

#### Database upgrade

This step is required only if you are upgrading from 1.0 or 1.0.1 versions.
Please use following instruction to update your single node instance:

Download upgrade scripts:
```bash
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.0.3/upgrade_1.0_1.0.2.sh
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.0.3/system_widgets_1.0_1.0.2.cql
```
{: .copy-code}

Launch main script:
```bash
chmod +x upgrade_1.0_1.0.2.sh
./upgrade_1.0_1.0.2.sh
``` 
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

## Upgrading to 1.1.0

These steps are applicable for 1.0.3 WinstarCloud version.

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-1-0
winstarcloud-download-1-1-0-ubuntu,Ubuntu,shell,resources/1.1.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.1.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-1-0-centos,CentOS,shell,resources/1.1.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.1.0/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-1-0
winstarcloud-installation-1-1-0-ubuntu,Ubuntu,shell,resources/1.1.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.1.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-1-0-centos,CentOS,shell,resources/1.1.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.1.0/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

#### Database upgrade

Please use the following instruction to update your single node instance:

Download upgrade scripts:
```bash
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.1.0/upgrade_1.0.3_1.1.0.sh
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.1.0/system_widgets_1.0.3_1.1.0.cql
```
{: .copy-code}

Launch main script:
```bash
chmod +x upgrade_1.0.3_1.1.0.sh
./upgrade_1.0.3_1.1.0.sh
``` 
{: .copy-code}

#### Start the service

```bash
$ sudo service winstarcloud start
```

## Upgrading to 1.2.0

These steps are applicable for 1.1.0 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-2-0
winstarcloud-download-1-2-0-ubuntu,Ubuntu,shell,resources/1.2.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.2.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-2-0-centos,CentOS,shell,resources/1.2.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.2.0/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-2-0
winstarcloud-installation-1-2-0-ubuntu,Ubuntu,shell,resources/1.2.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.2.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-2-0-centos,CentOS,shell,resources/1.2.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.2.0/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

#### Database upgrade

Download upgrade scripts:
```bash
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.0/upgrade_1.1.0_1.2.0.sh
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.0/system_widgets.cql
```
{: .copy-code}

Launch main script:
```bash
chmod +x upgrade_1.1.0_1.2.0.sh
./upgrade_1.1.0_1.2.0.sh
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-1.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v1.2/winstarcloud-windows-1.2.zip).

#### WinstarCloud service upgrade

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Uninstall the previous version of WinstarCloud service by running **uninstall.bat** located in WinstarCloud install dir.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>uninstall.bat
```
{: .copy-code}

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Run **install.bat** script to install the new version of WinstarCloud as a Windows service.

```text
C:\winstarcloud>install.bat
```
{: .copy-code}

#### Database upgrade
 
* Download upgrade scripts to some folder:
  * [upgrade_1.1.0_1.2.0.bat](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.0/upgrade_1.1.0_1.2.0.bat)
  * [system_widgets.cql](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.0/system_widgets.cql)
* Execute **upgrade_1.1.0_1.2.0.bat** (**NOTE** This script should be executed using Administrative Role)

```text
upgrade_1.1.0_1.2.0.bat
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 1.2.1

These steps are applicable for 1.2.0 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-2-1
winstarcloud-download-1-2-1-ubuntu,Ubuntu,shell,resources/1.2.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.2.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-2-1-centos,CentOS,shell,resources/1.2.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.2.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-2-1
winstarcloud-installation-1-2-1-ubuntu,Ubuntu,shell,resources/1.2.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.2.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-2-1-centos,CentOS,shell,resources/1.2.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.2.1/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

#### Database upgrade

Download upgrade scripts:
```bash
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.1/upgrade_1.2.0_1.2.1.sh
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.1/schema_update.cql
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.1/system_widgets.cql
```

Launch main script:
```bash
chmod +x upgrade_1.2.0_1.2.mqtt-js-telemetry-data-as-object.sh
./upgrade_1.2.0_1.2.mqtt-js-telemetry-data-as-object.sh
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-1.2.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v1.2.1/winstarcloud-windows-1.2.1.zip).

#### WinstarCloud service upgrade

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Uninstall the previous version of WinstarCloud service by running **uninstall.bat** located in WinstarCloud install dir.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>uninstall.bat
```
{: .copy-code}

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Run **install.bat** script to install the new version of WinstarCloud as a Windows service.

```text
C:\winstarcloud>install.bat
```
{: .copy-code}

#### Database upgrade
 
* Download upgrade scripts to some folder:
  * [upgrade_1.2.0_1.2.1.bat](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.1/upgrade_1.2.0_1.2.1.bat)
  * [schema_update.cql](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.1/schema_update.cql)
  * [system_widgets.cql](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.1/system_widgets.cql)
* Execute **upgrade_1.2.0_1.2.1.bat** (**NOTE** This script should be executed using Administrative Role)

```text
upgrade_1.2.0_1.2.1.bat
```
{: .copy-code} 

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}
## Upgrading to 1.2.2

These steps are applicable for 1.2.1 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-2-2
winstarcloud-download-1-2-2-ubuntu,Ubuntu,shell,resources/1.2.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.2.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-2-2-centos,CentOS,shell,resources/1.2.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.2.2/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-2-2
winstarcloud-installation-1-2-2-ubuntu,Ubuntu,shell,resources/1.2.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.2.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-2-2-centos,CentOS,shell,resources/1.2.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.2.2/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

#### Database upgrade

Download upgrade scripts:
```bash
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.2/upgrade_1.2.1_1.2.2.sh
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.2/system_widgets.cql
```
{: .copy-code}

Launch main script:
```bash
chmod +x upgrade_1.2.1_1.2.2.sh
./upgrade_1.2.1_1.2.2.sh
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-1.2.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v1.2.2/winstarcloud-windows-1.2.2.zip).

#### WinstarCloud service upgrade

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Uninstall the previous version of WinstarCloud service by running **uninstall.bat** located in WinstarCloud install dir.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>uninstall.bat
```
{: .copy-code}
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Run **install.bat** script to install the new version of WinstarCloud as a Windows service.

```text
C:\winstarcloud>install.bat
```
{: .copy-code}

#### Database upgrade
 
* Download upgrade scripts to some folder:
  * [upgrade_1.2.1_1.2.2.bat](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.2/upgrade_1.2.1_1.2.2.bat)
  * [system_widgets.cql](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.2/system_widgets.cql)
* Execute **upgrade_1.2.1_1.2.2.bat** (**NOTE** This script should be executed using Administrative Role)

```text
upgrade_1.2.1_1.2.2.bat
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 1.2.3

These steps are applicable for 1.2.2 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-2-3
winstarcloud-download-1-2-3-ubuntu,Ubuntu,shell,resources/1.2.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.2.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-2-3-centos,CentOS,shell,resources/1.2.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.2.3/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-2-3
winstarcloud-installation-1-2-3-ubuntu,Ubuntu,shell,resources/1.2.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.2.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-2-3-centos,CentOS,shell,resources/1.2.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.2.3/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

#### Database upgrade
Download upgrade scripts:
```bash
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.3/upgrade_1.2.2_1.2.3.sh
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.3/schema_update.cql
wget https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.3/system_widgets.cql
```
{: .copy-code}

Launch main script:
```bash
chmod +x upgrade_1.2.2_1.2.3.sh
./upgrade_1.2.2_1.2.3.sh
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-1.2.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v1.2.3/winstarcloud-windows-1.2.3.zip).

#### WinstarCloud service upgrade

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Uninstall the previous version of WinstarCloud service by running **uninstall.bat** located in WinstarCloud install dir.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>uninstall.bat
```
{: .copy-code}

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Run **install.bat** script to install the new version of WinstarCloud as a Windows service.

```text
C:\winstarcloud>install.bat
```
{: .copy-code}

#### Database upgrade
 
* Download upgrade scripts to some folder:
  * [upgrade_1.2.2_1.2.3.bat](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.3/upgrade_1.2.2_1.2.3.bat)
  * [schema_update.cql](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.3/schema_update.cql)
  * [system_widgets.cql](https://raw.githubusercontent.com/dalberona/winclouddocs/master/docs/user-guide/install/resources/1.2.3/system_widgets.cql)
* Execute **upgrade_1.2.2_1.2.3.bat** (**NOTE** This script should be executed using Administrative Role)

```text
upgrade_1.2.2_1.2.3.bat
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 1.3.0

These steps are applicable for 1.2.3 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-3-0
winstarcloud-download-1-3-0-ubuntu,Ubuntu,shell,resources/1.3.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.3.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-3-0-centos,CentOS,shell,resources/1.3.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.3.0/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-3-0
winstarcloud-installation-1-3-0-ubuntu,Ubuntu,shell,resources/1.3.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.3.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-3-0-centos,CentOS,shell,resources/1.3.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.3.0/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
 
```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=1.2.3 
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-1.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v1.3/winstarcloud-windows-1.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.
 
```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
  
```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```    

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=1.2.3
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 1.3.1

These steps are applicable for 1.3.0 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-3-1
winstarcloud-download-1-3-1-ubuntu,Ubuntu,shell,resources/1.3.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.3.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-3-1-centos,CentOS,shell,resources/1.3.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.3.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-3-1
winstarcloud-installation-1-3-1-ubuntu,Ubuntu,shell,resources/1.3.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.3.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-3-1-centos,CentOS,shell,resources/1.3.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.3.1/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
 
```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=1.3.0 
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-1.3.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v1.3.1/winstarcloud-windows-1.3.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.
 
```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
  
```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```    

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=1.3.0
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 1.4.0

These steps are applicable for 1.3.1 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-1-4-0
winstarcloud-download-1-4-0-ubuntu,Ubuntu,shell,resources/1.4.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/1.4.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-1-4-0-centos,CentOS,shell,resources/1.4.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/1.4.0/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-1-4-0
winstarcloud-installation-1-4-0-ubuntu,Ubuntu,shell,resources/1.4.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/1.4.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-1-4-0-centos,CentOS,shell,resources/1.4.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/1.4.0/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=1.3.1
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-1.4.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v1.4/winstarcloud-windows-1.4.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=1.3.1
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.0.0

These steps are applicable for 1.4.0 WinstarCloud version.

### Ubuntu/CentOS

{% include templates/upgrade-to-20-notice.md %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-0-0
winstarcloud-download-2-0-0-ubuntu,Ubuntu,shell,resources/2.0.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.0.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-0-0-centos,CentOS,shell,resources/2.0.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.0.0/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-2-0-0
winstarcloud-installation-2-0-0-ubuntu,Ubuntu,shell,resources/2.0.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.0.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-0-0-centos,CentOS,shell,resources/2.0.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.0.0/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
 
```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=1.4.0 
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

{% include templates/upgrade-to-20-notice.md %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.0.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.0/winstarcloud-windows-2.0.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.
 
```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
  
```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```      

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=1.4.0
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.0.1

These steps are applicable for 2.0.0 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-0-1
winstarcloud-download-2-0-1-ubuntu,Ubuntu,shell,resources/2.0.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.0.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-0-1-centos,CentOS,shell,resources/2.0.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.0.1/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-2-0-1
winstarcloud-installation-2-0-1-ubuntu,Ubuntu,shell,resources/2.0.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.0.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-0-1-centos,CentOS,shell,resources/2.0.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.0.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
 
```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.0.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.0.1/winstarcloud-windows-2.0.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.0.2

These steps are applicable for 2.0.1 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-0-2
winstarcloud-download-2-0-2-ubuntu,Ubuntu,shell,resources/2.0.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.0.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-0-2-centos,CentOS,shell,resources/2.0.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.0.2/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-2-0-2
winstarcloud-installation-2-0-2-ubuntu,Ubuntu,shell,resources/2.0.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.0.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-0-2-centos,CentOS,shell,resources/2.0.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.0.2/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
 
```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.0.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.0.2/winstarcloud-windows-2.0.2.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.0.3

These steps are applicable for 2.0.2 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-0-3
winstarcloud-download-2-0-3-ubuntu,Ubuntu,shell,resources/2.0.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.0.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-0-3-centos,CentOS,shell,resources/2.0.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.0.3/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-2-0-3
winstarcloud-installation-2-0-3-ubuntu,Ubuntu,shell,resources/2.0.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.0.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-0-3-centos,CentOS,shell,resources/2.0.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.0.3/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.0.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.0.3/winstarcloud-windows-2.0.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.1.0

These steps are applicable for 2.0.3 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-1-0
winstarcloud-download-2-1-0-ubuntu,Ubuntu,shell,resources/2.1.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.1.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-1-0-centos,CentOS,shell,resources/2.1.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.1.0/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-2-1-0
winstarcloud-installation-2-1-0-ubuntu,Ubuntu,shell,resources/2.1.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.1.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-1-0-centos,CentOS,shell,resources/2.1.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.1.0/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set database.type parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
database:
    type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.1/winstarcloud-windows-2.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set database.type parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
      type: "${DATABASE_TYPE:cassandra}" # cassandra OR sql
```

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.2.0

These steps are applicable for 2.1.0, 2.1.1, 2.1.2 and 2.1.3 WinstarCloud versions.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-2-0
winstarcloud-download-2-2-0-ubuntu,Ubuntu,shell,resources/2.2.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.2.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-2-0-centos,CentOS,shell,resources/2.2.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.2.0/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-2-2-0
winstarcloud-installation-2-2-0-ubuntu,Ubuntu,shell,resources/2.2.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.2.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-2-0-centos,CentOS,shell,resources/2.2.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.2.0/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
 
```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.0.0 
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.2/winstarcloud-windows-2.2.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    entities:
      type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.0.0
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.3.0

These steps are applicable for 2.2.0 WinstarCloud version.

### Ubuntu/CentOS

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-3-0
winstarcloud-download-2-3-0-ubuntu,Ubuntu,shell,resources/2.3.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.3.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-3-0-centos,CentOS,shell,resources/2.3.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.3.0/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

{% capture tabspec %}winstarcloud-installation-2-3-0
winstarcloud-installation-2-3-0-ubuntu,Ubuntu,shell,resources/2.3.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.3.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-3-0-centos,CentOS,shell,resources/2.3.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.3.0/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:
 
```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

Execute upgrade script
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.2.0 
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.3/winstarcloud-windows-2.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.
 
```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    entities:
      type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.2.0
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.4.0

These steps are applicable for 2.3.1 WinstarCloud version.

### Ubuntu/CentOS {#ubuntucentos-15}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-4-0
winstarcloud-download-2-4-0-ubuntu,Ubuntu,shell,resources/2.4.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.4.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-4-0-centos,CentOS,shell,resources/2.4.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.4.0/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-4-0
winstarcloud-installation-2-4-0-ubuntu,Ubuntu,shell,resources/2.4.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.4.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-4-0-centos,CentOS,shell,resources/2.4.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.4.0/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.3.1 
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-15}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.4.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.4/winstarcloud-windows-2.4.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    entities:
      type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.3.1
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.4.1

These steps are applicable for 2.4.0 WinstarCloud version.

### Ubuntu/CentOS {#ubuntucentos-16}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-4-1
winstarcloud-download-2-4-1-ubuntu,Ubuntu,shell,resources/2.4.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.4.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-4-1-centos,CentOS,shell,resources/2.4.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.4.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-4-1
winstarcloud-installation-2-4-1-ubuntu,Ubuntu,shell,resources/2.4.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.4.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-4-1-centos,CentOS,shell,resources/2.4.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.4.1/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.4.0 
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-16}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.4.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.4.1/winstarcloud-windows-2.4.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    entities:
      type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.4.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.4.2.1

These steps are applicable for 2.4.1 and 2.4.2 WinstarCloud versions.

### Ubuntu/CentOS {#ubuntucentos-17}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-4-2
winstarcloud-download-2-4-2-ubuntu,Ubuntu,shell,resources/2.4.2.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.4.2.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-4-2-centos,CentOS,shell,resources/2.4.2.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.4.2.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-4-2
winstarcloud-installation-2-4-2-ubuntu,Ubuntu,shell,resources/2.4.2.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.4.2.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-4-2-centos,CentOS,shell,resources/2.4.2.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.4.2.1/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.4.1 
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-17}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.4.2.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.4.2.1/winstarcloud-windows-2.4.2.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    entities:
      type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```       

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.4.1
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.4.3

These steps are applicable for 2.4.2 and 2.4.2.1 WinstarCloud versions.

### Ubuntu/CentOS {#ubuntucentos-18}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-4-3
winstarcloud-download-2-4-3-ubuntu,Ubuntu,shell,resources/2.4.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.4.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-4-3-centos,CentOS,shell,resources/2.4.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.4.3/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-4-3
winstarcloud-installation-2-4-3-ubuntu,Ubuntu,shell,resources/2.4.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.4.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-4-3-centos,CentOS,shell,resources/2.4.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.4.3/winstarcloud-centos-installation.sh{% endcapture %}  
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
    database:
      entities:
        type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
      ts:
        type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```

Execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.4.2
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-18}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.4.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.4.3/winstarcloud-windows-2.4.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    entities:
      type: "${DATABASE_ENTITIES_TYPE:cassandra}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:cassandra}" # cassandra OR sql (for hybrid mode, only this value should be cassandra)
```       

* Run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.4.2
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.5

These steps are applicable for 2.4.3 WinstarCloud version.

### Ubuntu/CentOS {#ubuntucentos-19}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-5
winstarcloud-download-2-5-ubuntu,Ubuntu,shell,resources/2.5/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.5/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-5-centos,CentOS,shell,resources/2.5/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.5/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-5
winstarcloud-installation-2-5-ubuntu,Ubuntu,shell,resources/2.5/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.5/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-5-centos,CentOS,shell,resources/2.5/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.5/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Upgrading WinstarCloud from 2.4.3 to 2.5 version in case of using PostgreSQL database require to upgrade the PostgreSQL service to 11.x version.

Please refer to the guides below that will describe how to upgrade your PostgreSQL service on:

- [Ubuntu](https://gist.github.com/ShvaykaD/1f0e6c1321a0a2b4b9f3b9ea9ab3e8d3)
- [CentOS](https://gist.github.com/ShvaykaD/313745d31a9af6db3d6a01ec9f16aac8)

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    entities:
      type: "${DATABASE_ENTITIES_TYPE:sql}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
  
  # note: timescale works only with postgreSQL database for DATABASE_ENTITIES_TYPE.
```

**NOTE:** If you are using **PostgreSql(Sql)** for time-series data storage before executing the upgrade script, go to the PostgreSQL terminal(psql) and follow the instructions below:

```bash
  # Connect to winstarcloud database:
  \c winstarcloud
  
  # Execute the next commands:
  
  # Update ts_kv table constraints:
  ALTER TABLE ts_kv DROP CONSTRAINT IF EXISTS ts_kv_unq_key;
  ALTER TABLE ts_kv DROP CONSTRAINT IF EXISTS ts_kv_pkey;
  ALTER TABLE ts_kv ADD CONSTRAINT ts_kv_pkey PRIMARY KEY (entity_type, entity_id, key, ts);
  
  # Update ts_kv_latest table constraints:
  ALTER TABLE ts_kv_latest DROP CONSTRAINT IF EXISTS ts_kv_latest_unq_key;
  ALTER TABLE ts_kv_latest DROP CONSTRAINT IF EXISTS ts_kv_latest_pkey;
  ALTER TABLE ts_kv_latest ADD CONSTRAINT ts_kv_latest_pkey PRIMARY KEY (entity_type, entity_id, key);
  
  # exit psql terminal 
  \q
```

Finally, execute upgrade script:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.4.3
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-19}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.5.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.5/winstarcloud-windows-2.5.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please note that upgrading WinstarCloud from 2.4.3 to 2.5 version in case of using PostgreSQL database require to upgrade the PostgreSQL service to 11.x version.
* Please make sure that you set **database.entities.type** and **database.ts.type** parameters values (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" in order to upgrade your cassandra database:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    entities:
      type: "${DATABASE_ENTITIES_TYPE:sql}" # cassandra OR sql
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
  
  # note: timescale works only with postgreSQL database for DATABASE_ENTITIES_TYPE.
```       

**NOTE:** If you are using **PostgreSql(Sql)** for time-series data storage before executing the upgrade script, you need to access the psql terminal. Once you will be logged to the psql terminal, please follow the instructions below:

```bash
  # Connect to winstarcloud database:
  \c winstarcloud
  
  # Execute the next commands:
  
  # Update ts_kv table constraints:
  ALTER TABLE ts_kv DROP CONSTRAINT IF EXISTS ts_kv_unq_key;
  ALTER TABLE ts_kv DROP CONSTRAINT IF EXISTS ts_kv_pkey;
  ALTER TABLE ts_kv ADD CONSTRAINT ts_kv_pkey PRIMARY KEY (entity_type, entity_id, key, ts);
  
  # Update ts_kv_latest table constraints:
  ALTER TABLE ts_kv_latest DROP CONSTRAINT IF EXISTS ts_kv_latest_unq_key;
  ALTER TABLE ts_kv_latest DROP CONSTRAINT IF EXISTS ts_kv_latest_pkey;
  ALTER TABLE ts_kv_latest ADD CONSTRAINT ts_kv_latest_pkey PRIMARY KEY (entity_type, entity_id, key);
  
  # exit psql terminal 
  \q
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.4.3
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.5.1 {#upgrading-to-251}

These steps are applicable for 2.4.3+ WinstarCloud version.

### Ubuntu/CentOS {#ubuntucentos-251}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-5-1
winstarcloud-download-2-5-1-ubuntu,Ubuntu,shell,resources/2.5.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.5.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-5-1-centos,CentOS,shell,resources/2.5.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.5.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-5-1
winstarcloud-installation-2-5-1-ubuntu,Ubuntu,shell,resources/2.5.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.5.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-5-1-centos,CentOS,shell,resources/2.5.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.5.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Upgrading WinstarCloud to 2.5.1 version in case of using PostgreSQL database require to upgrade the PostgreSQL service to 11.x version.

Please refer to the guides below that will describe how to upgrade your PostgreSQL service on:

- [Ubuntu](https://gist.github.com/ShvaykaD/1f0e6c1321a0a2b4b9f3b9ea9ab3e8d3)
- [CentOS](https://gist.github.com/ShvaykaD/313745d31a9af6db3d6a01ec9f16aac8)

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.

Finally, execute upgrade script and specify your previous WinstarCloud version:
```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.4.3
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-251}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.5.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.5.1/winstarcloud-windows-2.5.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please note that upgrading WinstarCloud from 2.4.3 to 2.5 version in case of using PostgreSQL database require to upgrade the PostgreSQL service to 11.x version.

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.4.3
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.5.2 {#upgrading-to-252}

### Ubuntu/CentOS {#ubuntucentos-252}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.1. In order to upgrade to 2.5.2 you need to [**upgrade to 2.5.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-251).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-5-2
winstarcloud-download-2-5-2-ubuntu,Ubuntu,shell,resources/2.5.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.5.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-5-2-centos,CentOS,shell,resources/2.5.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.5.2/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-5-2
winstarcloud-installation-2-5-2-ubuntu,Ubuntu,shell,resources/2.5.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.5.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-5-2-centos,CentOS,shell,resources/2.5.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.5.2/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Upgrading WinstarCloud to 2.5.2 version in case of using PostgreSQL database require to upgrade the PostgreSQL service to 11.x version.

Please refer to the guides below that will describe how to upgrade your PostgreSQL service on:

- [Ubuntu](https://gist.github.com/ShvaykaD/1f0e6c1321a0a2b4b9f3b9ea9ab3e8d3)
- [CentOS](https://gist.github.com/ShvaykaD/313745d31a9af6db3d6a01ec9f16aac8)

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-252}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.1. In order to upgrade to 2.5.2 you need to [**upgrade to 2.5.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-251).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.5.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.5.2/winstarcloud-windows-2.5.2.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please note that upgrading WinstarCloud from 2.4.3 to 2.5 version in case of using PostgreSQL database require to upgrade the PostgreSQL service to 11.x version.

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.4.3
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.5.3 {#upgrading-to-253}

### Ubuntu/CentOS {#ubuntucentos-253}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.2. In order to upgrade to 2.5.3 you need to [**upgrade to 2.5.2 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-252).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-5-3
winstarcloud-download-2-5-3-ubuntu,Ubuntu,shell,resources/2.5.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.5.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-5-3-centos,CentOS,shell,resources/2.5.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.5.3/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-5-3
winstarcloud-installation-2-5-3-ubuntu,Ubuntu,shell,resources/2.5.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.5.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-5-3-centos,CentOS,shell,resources/2.5.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.5.3/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-253}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.2. In order to upgrade to 2.5.3 you need to [**upgrade to 2.5.2 first**](/docs/user-guide/install/upgrade-instructions/#windows-252).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.5.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.5.3/winstarcloud-windows-2.5.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.5.4 {#upgrading-to-254}

### Ubuntu/CentOS {#ubuntucentos-254}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.3. In order to upgrade to 2.5.4 you need to [**upgrade to 2.5.3 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-253).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-5-4
winstarcloud-download-2-5-4-ubuntu,Ubuntu,shell,resources/2.5.4/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.5.4/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-5-4-centos,CentOS,shell,resources/2.5.4/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.5.4/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-5-4
winstarcloud-installation-2-5-4-ubuntu,Ubuntu,shell,resources/2.5.4/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.5.4/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-5-4-centos,CentOS,shell,resources/2.5.4/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.5.4/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-254}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.3. In order to upgrade to 2.5.4 you need to [**upgrade to 2.5.3 first**](/docs/user-guide/install/upgrade-instructions/#windows-253).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.5.4.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.5.4/winstarcloud-windows-2.5.4.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.5.5 {#upgrading-to-255}

### Ubuntu/CentOS {#ubuntucentos-255}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.4. In order to upgrade to 2.5.5 you need to [**upgrade to 2.5.4 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-254).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-5-5
winstarcloud-download-2-5-5-ubuntu,Ubuntu,shell,resources/2.5.5/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.5.5/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-5-5-centos,CentOS,shell,resources/2.5.5/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.5.5/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-5-5
winstarcloud-installation-2-5-5-ubuntu,Ubuntu,shell,resources/2.5.5/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.5.5/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-5-5-centos,CentOS,shell,resources/2.5.5/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.5.5/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-255}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.4. In order to upgrade to 2.5.5 you need to [**upgrade to 2.5.4 first**](/docs/user-guide/install/upgrade-instructions/#windows-254).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.5.5.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.5.5/winstarcloud-windows-2.5.5.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).
* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 2.5.6 {#upgrading-to-256}

### Ubuntu/CentOS {#ubuntucentos-256}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.5. In order to upgrade to 2.5.6 you need to [**upgrade to 2.5.5 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-255).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-2-5-6
winstarcloud-download-2-5-6-ubuntu,Ubuntu,shell,resources/2.5.6/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/2.5.6/winstarcloud-ubuntu-download.sh
winstarcloud-download-2-5-6-centos,CentOS,shell,resources/2.5.6/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/2.5.6/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-2-5-6
winstarcloud-installation-2-5-6-ubuntu,Ubuntu,shell,resources/2.5.6/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/2.5.6/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-2-5-6-centos,CentOS,shell,resources/2.5.6/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/2.5.6/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-256}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.5. In order to upgrade to 2.5.6 you need to [**upgrade to 2.5.5 first**](/docs/user-guide/install/upgrade-instructions/#windows-255).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-2.5.6.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v2.5.6/winstarcloud-windows-2.5.6.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.0 {#upgrading-to-30}


**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.6. In order to upgrade to 3.0 you need to [**upgrade to 2.5.6 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-256).

### Ubuntu/CentOS {#ubuntucentos-30}

{% include templates/install/tb-30-update.md %}

<br>

{% capture tb_3_0_postgreSQL_linux %}
**Since WinstarCloud 3.0 only PostgreSQL database is supported for entities data**
- If you are using **Cassandra** database for entities data please install PostgreSQL database before proceeding upgrade procedure using the following guide:
  - [PostgreSQL Installation on Ubuntu](/docs/user-guide/install/ubuntu/?ubuntuWinstarcloudDatabase=postgresql#step-3-configure-winstarcloud-database)
  - [PostgreSQL Installation on CentOS/RHEL](/docs/user-guide/install/rhel/?rhelWinstarcloudDatabase=postgresql#step-3-configure-winstarcloud-database)

{% endcapture %}
{% include templates/info-banner.md content=tb_3_0_postgreSQL_linux %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-0
winstarcloud-download-3-0-ubuntu,Ubuntu,shell,resources/3.0.0/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.0.0/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-0-centos,CentOS,shell,resources/3.0.0/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.0.0/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-0
winstarcloud-installation-3-0-ubuntu,Ubuntu,shell,resources/3.0.0/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.0.0/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-0-centos,CentOS,shell,resources/3.0.0/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.0.0/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

**NOTE**: If you were using **Cassandra** database for entities data execute the following migration script:

```bash
# Execute migration script from Cassandra to PostgreSQL
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.5.0-cassandra
```
{: .copy-code}

Otherwise execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.5.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-30}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 2.5.6. In order to upgrade to 3.0 you need to [**upgrade to 2.5.6 first**](/docs/user-guide/install/upgrade-instructions/#windows-256).

{% include templates/install/tb-30-update.md %}

{% capture tb_3_0_postgreSQL_windows %}
**Since WinstarCloud 3.0 only PostgreSQL database is supported for entities data**
- If you are using **Cassandra** database for entities data please install PostgreSQL database before proceeding upgrade procedure using the following guide:
  - [PostgreSQL Installation on Windows](/docs/user-guide/install/windows/?ubuntuWinstarcloudDatabase=postgresql#step-3-configure-winstarcloud-database)

{% endcapture %}
{% include templates/info-banner.md content=tb_3_0_postgreSQL_windows %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.0.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.0/winstarcloud-windows-3.0.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

**NOTE**: If you were using **Cassandra** database for entities data execute the following migration script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.5.0-cassandra
```
{: .copy-code}

Otherwise execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.5.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.0.1 {#upgrading-to-301}

### Ubuntu/CentOS {#ubuntucentos-301}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.0. In order to upgrade to 3.0.1 you need to [**upgrade to 3.0 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-30).

<br>

{% include templates/install/tb-30-update.md %}

<br>

{% capture tb_3_0_1_postgreSQL_linux %}
**Since WinstarCloud 3.0 only PostgreSQL database is supported for entities data**
- If you are using **Cassandra** database for entities data please install PostgreSQL database before proceeding upgrade procedure using the following guide:
  - [PostgreSQL Installation on Ubuntu](/docs/user-guide/install/ubuntu/?ubuntuWinstarcloudDatabase=postgresql#step-3-configure-winstarcloud-database)
  - [PostgreSQL Installation on CentOS/RHEL](/docs/user-guide/install/rhel/?rhelWinstarcloudDatabase=postgresql#step-3-configure-winstarcloud-database)

{% endcapture %}
{% include templates/info-banner.md content=tb_3_0_1_postgreSQL_linux %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-0-1
winstarcloud-download-3-0-1-ubuntu,Ubuntu,shell,resources/3.0.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.0.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-0-1-centos,CentOS,shell,resources/3.0.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.0.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-0-1
winstarcloud-installation-3-0-1-ubuntu,Ubuntu,shell,resources/3.0.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.0.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-0-1-centos,CentOS,shell,resources/3.0.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.0.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

**NOTE**: If you were using **Cassandra** database for entities data execute the following migration script:

```bash
# Execute migration script from Cassandra to PostgreSQL
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.5.0-cassandra
```
{: .copy-code}

Otherwise execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=2.5.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-301}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.0. In order to upgrade to 3.0.1 you need to [**upgrade to 3.0 first**](/docs/user-guide/install/upgrade-instructions/#windows-30).

<br>

{% include templates/install/tb-30-update.md %}

{% capture tb_3_0_1_postgreSQL_windows %}
**Since WinstarCloud 3.0 only PostgreSQL database is supported for entities data**
- If you are using **Cassandra** database for entities data please install PostgreSQL database before proceeding upgrade procedure using the following guide:
  - [PostgreSQL Installation on Windows](/docs/user-guide/install/windows/?ubuntuWinstarcloudDatabase=postgresql#step-3-configure-winstarcloud-database)

{% endcapture %}
{% include templates/info-banner.md content=tb_3_0_1_postgreSQL_windows %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.0.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.0.1/winstarcloud-windows-3.0.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```       

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

**NOTE**: If you were using **Cassandra** database for entities data execute the following migration script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.5.0-cassandra
```
{: .copy-code}

Otherwise execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=2.5.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.1 {#upgrading-to-31}

### Ubuntu/CentOS {#ubuntucentos-31}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.0.1. In order to upgrade to 3.1 you need to [**upgrade to 3.0.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-301).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-1
winstarcloud-download-3-1-ubuntu,Ubuntu,shell,resources/3.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-1-centos,CentOS,shell,resources/3.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-1
winstarcloud-installation-3-1-ubuntu,Ubuntu,shell,resources/3.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-1-centos,CentOS,shell,resources/3.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

**NOTE**: Cassandra database does not support [advanced filters](/docs/user-guide/advanced-filters/). If you were using **Cassandra** database for timeseries data please make sure that **database.ts_latest.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) is "sql":

```
  database:
  ...
    ts_latest:
      type: "${DATABASE_TS_LATEST_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

and execute the following migration script:

```bash
# Execute script to migrate latest timeseries data from Cassandra to PostgreSQL
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=cassandra-latest-to-postgres
```
{: .copy-code}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.0.1
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-31}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.0.1. In order to upgrade to 3.1 you need to [**upgrade to 3.0.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-301).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.1/winstarcloud-windows-3.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

**NOTE**: If you were using **Cassandra** database for entities data execute the following migration script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=cassandra-latest-to-postgres
```
{: .copy-code}

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.0.1
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.1.1 {#upgrading-to-311}

### Ubuntu/CentOS {#ubuntucentos-311}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.1. In order to upgrade to 3.1.1 you need to [**upgrade to 3.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-31).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-1-1
winstarcloud-download-3-1-1-ubuntu,Ubuntu,shell,resources/3.1.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.1.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-1-1-centos,CentOS,shell,resources/3.1.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.1.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-1-1
winstarcloud-installation-3-1-1-ubuntu,Ubuntu,shell,resources/3.1.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.1.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-1-1-centos,CentOS,shell,resources/3.1.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.1.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
database:
  ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
  ts:
    type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.1.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-311}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.1. In order to upgrade to 3.1.1 you need to [**upgrade to 3.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-31).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.1.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.1.1/winstarcloud-windows-3.1.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.1.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```

## Upgrading to 3.2 {#upgrading-to-32}

### Ubuntu/CentOS {#ubuntucentos-32}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.1.1. In order to upgrade to 3.2 you need to [**upgrade to 3.1.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-311).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-2
winstarcloud-download-3-2-ubuntu,Ubuntu,shell,resources/3.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-2-centos,CentOS,shell,resources/3.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.2/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-2
winstarcloud-installation-3-2-ubuntu,Ubuntu,shell,resources/3.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-2-centos,CentOS,shell,resources/3.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.2/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.1.1
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-32}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.1.1. In order to upgrade to 3.2 you need to [**upgrade to 3.1.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-311).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.2/winstarcloud-windows-3.2.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
database:
  ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
  ts:
    type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.1.1
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.2.1 {#upgrading-to-321}

### Ubuntu/CentOS {#ubuntucentos-321}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.2. In order to upgrade to 3.2.1 you need to [**upgrade to 3.2 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-32).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-2-1
winstarcloud-download-3-2-1-ubuntu,Ubuntu,shell,resources/3.2.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.2.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-2-1-centos,CentOS,shell,resources/3.2.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.2.1/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-2-1
winstarcloud-installation-3-2-1-ubuntu,Ubuntu,shell,resources/3.2.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.2.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-2-1-centos,CentOS,shell,resources/3.2.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.2.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
database:
  ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
  ts:
    type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.2.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-321}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.2. In order to upgrade to 3.2.1 you need to [**upgrade to 3.2 first**](/docs/user-guide/install/upgrade-instructions/#windows-32).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.2.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.2.1/winstarcloud-windows-3.2.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.2.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.2.2 {#upgrading-to-322}

### Ubuntu/CentOS {#ubuntucentos-322}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.2.1. In order to upgrade to 3.2.2 you need to [**upgrade to 3.2.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-321).

<br>

{% capture tb_3_2_2_java_11_linux %}
**NOTE: Since WinstarCloud version 3.2.2 Java 11 is used**
- Please install Java 11 before proceeding upgrade procedure using the following guide:
  - [Java 11 Installation on Ubuntu](/docs/user-guide/install/ubuntu/#step-1-install-java-11-openjdk)
  - [Java 11 Installation on CentOS/RHEL](/docs/user-guide/install/rhel/#step-1-install-java-11-openjdk)

{% endcapture %}
{% include templates/warn-banner.md content=tb_3_2_2_java_11_linux %}


{% capture cassandra-in-beta %}
Please note that Cassandra 4.x is still in beta. WinstarCloud is compatible with Cassandra 3.x as well.
However, since WinstarCloud 3.2.2+ requires Java 11 and Cassandra 3.x is [not compatible](https://cassandra.apache.org/doc/latest/new/java11.html) with Java 8, you **can't launch WinstarCloud 3.2.2+ and Cassandra 3.x on the same machine without separate docker containers for both.**.
{% if docsPrefix == "pe/" %}
Please consider using [docker compose](/docs/user-guide/install/pe/cluster/docker-compose-setup/) or other [cluster setup](/docs/user-guide/install/pe/cluster-setup/)
to avoid issues with beta version of Cassandra.
{% else %}
Please consider using [docker compose](/docs/user-guide/install/cluster/docker-compose-setup/) or other [cluster setup](/docs/user-guide/install/cluster-setup/)
to avoid issues with beta version of Cassandra.
{% endif %}
{% endcapture %}
{% include templates/info-banner.md content=cassandra-in-beta %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-2-2
winstarcloud-download-3-2-2-ubuntu,Ubuntu,shell,resources/3.2.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.2.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-2-2-centos,CentOS,shell,resources/3.2.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.2.2/winstarcloud-centos-download.sh{% endcapture %}  
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-2-2
winstarcloud-installation-3-2-2-ubuntu,Ubuntu,shell,resources/3.2.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.2.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-2-2-centos,CentOS,shell,resources/3.2.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.2.2/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.  
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.2.1
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-322}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.2.1. In order to upgrade to 3.2.2 you need to [**upgrade to 3.2.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-321).

<br>

{% capture tb_3_2_2_java_11_windows %}
**NOTE: Since WinstarCloud version 3.2.2 Java 11 is used**
- Please install Java 11 before proceeding upgrade procedure using the following guide:
  - [Java 11 Installation on Windows](/docs/user-guide/install/windows/#step-1-install-java-11-openjdk)

{% endcapture %}
{% include templates/warn-banner.md content=tb_3_2_2_java_11_windows %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.2.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.2.2/winstarcloud-windows-3.2.2.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.2.1
```
{: .copy-code}
#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```

## Upgrading to 3.3 {#upgrading-to-33}

### Ubuntu/CentOS {#ubuntucentos-33}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.2.2. In order to upgrade to 3.3 you need to [**upgrade to 3.2.2 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-322).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-3
winstarcloud-download-3-3-ubuntu,Ubuntu,shell,resources/3.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-3-centos,CentOS,shell,resources/3.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.3/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-3
winstarcloud-installation-3-3-ubuntu,Ubuntu,shell,resources/3.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-3-centos,CentOS,shell,resources/3.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.3/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer will ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

**NOTE**: If you were using MQTT over SSL instead of default MQTT, please make sure you have a proper configuration (**winstarcloud.conf** and/or **winstarcloud.yml**) of ports/addresses:

**/etc/winstarcloud/conf/winstarcloud.conf**

```
export MQTT_SSL_ENABLED=true
export MQTT_SSL_BIND_ADDRESS=0.0.0.0
export MQTT_SSL_BIND_PORT=8883

export MQTT_BIND_ADDRESS=0.0.0.0
export MQTT_BIND_PORT=1883
```
{: .copy-code}

**/etc/winstarcloud/conf/winstarcloud.yml**

```
transport:

. . .

  # Local MQTT transport parameters
  mqtt:
    # Enable/disable mqtt transport protocol.
    enabled: "${MQTT_ENABLED:true}"
    bind_address: "${MQTT_BIND_ADDRESS:0.0.0.0}"
    bind_port: "${MQTT_BIND_PORT:1883}"

. . .

    ssl:
      # Enable/disable SSL support
      enabled: "${MQTT_SSL_ENABLED:true}"
      # MQTT SSL bind address
      bind_address: "${MQTT_SSL_BIND_ADDRESS:0.0.0.0}"
      # MQTT SSL bind port
      bind_port: "${MQTT_SSL_BIND_PORT:8883}"
```

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.2.2
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}
### Windows {#windows-33}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.2.2. In order to upgrade to 3.3 you need to [**upgrade to 3.2.2 first**](/docs/user-guide/install/upgrade-instructions/#windows-322).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.3/winstarcloud-windows-3.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* If you were using MQTT over SSL instead of default MQTT, please make sure you have a proper configuration (**winstarcloud.yml**) of ports/addresses:

```
transport:

. . .

  # Local MQTT transport parameters
  mqtt:
    # Enable/disable mqtt transport protocol.
    enabled: "${MQTT_ENABLED:true}"
    bind_address: "${MQTT_BIND_ADDRESS:0.0.0.0}"
    bind_port: "${MQTT_BIND_PORT:1883}"

. . .

    ssl:
      # Enable/disable SSL support
      enabled: "${MQTT_SSL_ENABLED:true}"
      # MQTT SSL bind address
      bind_address: "${MQTT_SSL_BIND_ADDRESS:0.0.0.0}"
      # MQTT SSL bind port
      bind_port: "${MQTT_SSL_BIND_PORT:8883}"
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.2.2
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.3.1 {#upgrading-to-331}

### Ubuntu/CentOS {#ubuntucentos-331}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.3.0. In order to upgrade to 3.3.1 you need to [**upgrade to 3.3.0 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-33).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-3-1
winstarcloud-download-3-3-1-ubuntu,Ubuntu,shell,resources/3.3.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.3.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-3-1-centos,CentOS,shell,resources/3.3.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.3.1/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-3-1
winstarcloud-installation-3-3-1-ubuntu,Ubuntu,shell,resources/3.3.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.3.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-3-1-centos,CentOS,shell,resources/3.3.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.3.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.3.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-331}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.3.0. In order to upgrade to 3.3.1 you need to [**upgrade to 3.3.0 first**](/docs/user-guide/install/upgrade-instructions/#windows-33).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.3.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.3.1/winstarcloud-windows-3.3.1.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```
{: .copy-code}

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
  database:
    ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
    ts:
      type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.3.0
```
{: .copy-code}

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.3.2 {#upgrading-to-332}

### Ubuntu/CentOS {#ubuntucentos-332}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.3.1. In order to upgrade to 3.3.2 you need to [**upgrade to 3.3.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-331).

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-3-2
winstarcloud-download-3-3-2-ubuntu,Ubuntu,shell,resources/3.3.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.3.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-3-2-centos,CentOS,shell,resources/3.3.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.3.2/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-3-2
winstarcloud-installation-3-3-2-ubuntu,Ubuntu,shell,resources/3.3.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.3.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-3-2-centos,CentOS,shell,resources/3.3.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.3.2/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
Please make sure that you set **database.ts.type** parameter value (in the file **/etc/winstarcloud/conf/winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
database:
  ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
  ts:
    type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

Execute regular upgrade script:

```bash
# Execute regular upgrade script
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.3.1
```

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```bash
$ sudo service winstarcloud start
```

### Windows {#windows-332}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.3.1. In order to upgrade to 3.3.2 you need to [**upgrade to 3.3.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-331).

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.3.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.3.2/winstarcloud-windows-3.3.2.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.
* Please make sure that you set **database.ts.type** parameter value (in the file **\<WinstarCloud install dir\>\conf\winstarcloud.yml**) to "cassandra" instead of "sql" if you are using Cassandra database for timeseries data:

```
database:
  ts_max_intervals: "${DATABASE_TS_MAX_INTERVALS:700}" # Max number of DB queries generated by single API call to fetch telemetry records
  ts:
    type: "${DATABASE_TS_TYPE:sql}" # cassandra, sql, or timescale (for hybrid mode, DATABASE_TS_TYPE value should be cassandra, or timescale)
```

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.3.1
```

#### Start the service

{% include templates/redis-post-upgrade-notice.md %}

```text
net start winstarcloud
```

## Upgrading to 3.3.3 {#upgrading-to-333}

### Ubuntu/CentOS {#ubuntucentos-333}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.3.2. In order to upgrade to 3.3.3 you need to [**upgrade to 3.3.2 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-332).

{% include templates/install/tb-333-update.md %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-3-3
winstarcloud-download-3-3-3-ubuntu,Ubuntu,shell,resources/3.3.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.3.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-3-3-centos,CentOS,shell,resources/3.3.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.3.3/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
$ sudo service winstarcloud stop
```

{% capture tabspec %}winstarcloud-installation-3-3-3
winstarcloud-installation-3-3-3-ubuntu,Ubuntu,shell,resources/3.3.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.3.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-3-3-centos,CentOS,shell,resources/3.3.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.3.3/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

**NOTE:** Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.

Execute regular upgrade script:

```bash
# Execute regular upgrade script
$ sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.3.2
```

#### Start the service

```bash
$ sudo service winstarcloud start
```

### Windows {#windows-333}

**NOTE**: These upgrade steps are applicable for WinstarCloud version 3.3.2. In order to upgrade to 3.3.3 you need to [**upgrade to 3.3.2 first**](/docs/user-guide/install/upgrade-instructions/#windows-332).

{% include templates/install/tb-333-update.md %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.3.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.3.3/winstarcloud-windows-3.3.3.zip).

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```text
net stop winstarcloud
```

* Make a backup of previous WinstarCloud configuration located in \<WinstarCloud install dir\>\conf (for ex. C:\winstarcloud\conf).

* Remove WinstarCloud install dir.
* Unzip installation archive to WinstarCloud install dir.
* Compare and merge your old WinstarCloud configuration files (from the backup you made in the first step) with new ones.

* Finally, run **upgrade.bat** script to upgrade WinstarCloud to the new version.

**NOTE** Scripts listed above should be executed using Administrator Role.

Execute regular upgrade script:

```text
C:\winstarcloud>upgrade.bat --fromVersion=3.3.2
```

#### Start the service

```text
net start winstarcloud
```

## Upgrading to 3.3.4 {#upgrading-to-334}

### Ubuntu/CentOS {#ubuntucentos-334}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.3.3. In order to upgrade to 3.3.4 you need to [**upgrade to 3.3.3 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-333).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-3-4
winstarcloud-download-3-3-4-ubuntu,Ubuntu,shell,resources/3.3.4/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.3.4/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-3-4-centos,CentOS,shell,resources/3.3.4/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.3.4/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-3-4
winstarcloud-installation-3-3-4-ubuntu,Ubuntu,shell,resources/3.3.4/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.3.4/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-3-4-centos,CentOS,shell,resources/3.3.4/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.3.4/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.3.3
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-334}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.3.3. In order to upgrade to 3.3.4 you need to [**upgrade to 3.3.3 first**](/docs/user-guide/install/upgrade-instructions/#windows-333).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.3.4.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.3.4/winstarcloud-windows-3.3.4.zip).

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
C:\winstarcloud>upgrade.bat --fromVersion=3.3.3
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.3.4.1 {#upgrading-to-3341}

### Ubuntu/CentOS {#ubuntucentos-3341}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.3.4. In order to upgrade to 3.3.4.1 you need to [**upgrade to 3.3.4 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-334).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-3-4-1
winstarcloud-download-3-3-4-1-ubuntu,Ubuntu,shell,resources/3.3.4.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.3.4.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-3-4-1-centos,CentOS,shell,resources/3.3.4.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.3.4.1/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-3-4-1
winstarcloud-installation-3-3-4-1-ubuntu,Ubuntu,shell,resources/3.3.4.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.3.4.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-3-4-1-centos,CentOS,shell,resources/3.3.4.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.3.4.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-3341}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.3.4. In order to upgrade to 3.3.4.1 you need to [**upgrade to 3.3.4 first**](/docs/user-guide/install/upgrade-instructions/#windows-334).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.3.4.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.3.4.1/winstarcloud-windows-3.3.4.1.zip).

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

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.4 {#upgrading-to-34}

### Ubuntu/CentOS {#ubuntucentos-34}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.3.4.1. In order to upgrade to 3.4 you need to [**upgrade to 3.3.4.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-3341).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-4
winstarcloud-download-3-4-ubuntu,Ubuntu,shell,resources/3.4/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.4/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-4-centos,CentOS,shell,resources/3.4/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.4/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-4
winstarcloud-installation-3-4-ubuntu,Ubuntu,shell,resources/3.4/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.4/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-4-centos,CentOS,shell,resources/3.4/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.4/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.3.4
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-34}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.3.4.1. In order to upgrade to 3.4 you need to [**upgrade to 3.3.4.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-3341).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.4.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.4/winstarcloud-windows-3.4.zip).

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
C:\winstarcloud>upgrade.bat --fromVersion=3.3.4
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.4.1 {#upgrading-to-341}

### Ubuntu/CentOS {#ubuntucentos-341}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4. In order to upgrade to 3.4.1 you need to [**upgrade to 3.4 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-34).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-4-1
winstarcloud-download-3-4-1-ubuntu,Ubuntu,shell,resources/3.4.1/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.4.1/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-4-1-centos,CentOS,shell,resources/3.4.1/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.4.1/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-4-1
winstarcloud-installation-3-4-1-ubuntu,Ubuntu,shell,resources/3.4.1/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.4.1/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-4-1-centos,CentOS,shell,resources/3.4.1/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.4.1/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.4.0
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-341}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4. In order to upgrade to 3.4.1 you need to [**upgrade to 3.4 first**](/docs/user-guide/install/upgrade-instructions/#windows-34).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.4.1.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.4.1/winstarcloud-windows-3.4.1.zip).

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
C:\winstarcloud>upgrade.bat --fromVersion=3.4.0
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.4.2 {#upgrading-to-342}

### Ubuntu/CentOS {#ubuntucentos-342}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.1. In order to upgrade to 3.4.2 you need to [**upgrade to 3.4.1 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-341).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-4-2
winstarcloud-download-3-4-2-ubuntu,Ubuntu,shell,resources/3.4.2/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.4.2/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-4-2-centos,CentOS,shell,resources/3.4.2/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.4.2/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-4-2
winstarcloud-installation-3-4-2-ubuntu,Ubuntu,shell,resources/3.4.2/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.4.2/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-4-2-centos,CentOS,shell,resources/3.4.2/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.4.2/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

Execute regular upgrade script:

```bash
sudo /usr/share/winstarcloud/bin/install/upgrade.sh --fromVersion=3.4.1
```
{: .copy-code}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

{% capture default-jwt %}
Update the JWT signing key if you use the default one "winstarcloudDefaultSigningKey" on production environments. See [JWT security settings](/docs/user-guide/ui/jwt-security-settings/) for details.
{% endcapture %}
{% include templates/info-banner.md content=default-jwt %}

### Windows {#windows-342}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.1. In order to upgrade to 3.4.2 you need to [**upgrade to 3.4.1 first**](/docs/user-guide/install/upgrade-instructions/#windows-341).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.4.2.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.4.2/winstarcloud-windows-3.4.2.zip).

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
C:\winstarcloud>upgrade.bat --fromVersion=3.4.1
```
{: .copy-code}

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

{% capture default-jwt %}
Update the JWT signing key if you use the default one "winstarcloudDefaultSigningKey" on production environments. See [JWT security settings](/docs/user-guide/ui/jwt-security-settings/) for details.
{% endcapture %}
{% include templates/info-banner.md content=default-jwt %}


## Upgrading to 3.4.3 {#upgrading-to-343}

### Ubuntu/CentOS {#ubuntucentos-343}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.2. In order to upgrade to 3.4.3 you need to [**upgrade to 3.4.2 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-342).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-4-3
winstarcloud-download-3-4-3-ubuntu,Ubuntu,shell,resources/3.4.3/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.4.3/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-4-3-centos,CentOS,shell,resources/3.4.3/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.4.3/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-4-3
winstarcloud-installation-3-4-3-ubuntu,Ubuntu,shell,resources/3.4.3/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.4.3/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-4-3-centos,CentOS,shell,resources/3.4.3/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.4.3/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-343}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.2. In order to upgrade to 3.4.3 you need to [**upgrade to 3.4.2 first**](/docs/user-guide/install/upgrade-instructions/#windows-342).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.4.3.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.4.3/winstarcloud-windows-3.4.3.zip).

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

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}

## Upgrading to 3.4.4 {#upgrading-to-344}

### Ubuntu/CentOS {#ubuntucentos-344}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.3. In order to upgrade to 3.4.4 you need to [**upgrade to 3.4.3 first**](/docs/user-guide/install/upgrade-instructions/#ubuntucentos-343).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

{% capture tabspec %}winstarcloud-download-3-4-4
winstarcloud-download-3-4-4-ubuntu,Ubuntu,shell,resources/3.4.4/winstarcloud-ubuntu-download.sh,/docs/user-guide/install/resources/3.4.4/winstarcloud-ubuntu-download.sh
winstarcloud-download-3-4-4-centos,CentOS,shell,resources/3.4.4/winstarcloud-centos-download.sh,/docs/user-guide/install/resources/3.4.4/winstarcloud-centos-download.sh{% endcapture %}
{% include tabs.html %}

#### WinstarCloud service upgrade

* Stop WinstarCloud service if it is running.

```bash
sudo service winstarcloud stop
```
{: .copy-code}

{% capture tabspec %}winstarcloud-installation-3-4-4
winstarcloud-installation-3-4-4-ubuntu,Ubuntu,shell,resources/3.4.4/winstarcloud-ubuntu-installation.sh,/docs/user-guide/install/resources/3.4.4/winstarcloud-ubuntu-installation.sh
winstarcloud-installation-3-4-4-centos,CentOS,shell,resources/3.4.4/winstarcloud-centos-installation.sh,/docs/user-guide/install/resources/3.4.4/winstarcloud-centos-installation.sh{% endcapture %}
{% include tabs.html %}

{% capture difference %}
**NOTE:**
<br>
Package installer may ask you to merge your winstarcloud configuration. It is preferred to use **merge option** to make sure that all your previous parameters will not be overwritten.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### Start the service

```bash
sudo service winstarcloud start
```
{: .copy-code}

### Windows {#windows-344}

{% capture difference %}
**NOTE:**
<br>
These upgrade steps are applicable for WinstarCloud version 3.4.3. In order to upgrade to 3.4.4 you need to [**upgrade to 3.4.3 first**](/docs/user-guide/install/upgrade-instructions/#windows-343).
{% endcapture %}
{% include templates/info-banner.md content=difference %}

#### WinstarCloud package download

Download WinstarCloud installation archive for Windows: [winstarcloud-windows-3.4.4.zip](https://github.com/winstarcloud/winstarcloud/releases/download/v3.4.4/winstarcloud-windows-3.4.4.zip).

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

#### Start the service

```text
net start winstarcloud
```
{: .copy-code}


## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}
