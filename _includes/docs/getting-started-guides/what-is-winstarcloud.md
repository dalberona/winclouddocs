
WinstarCloud is an open-source IoT platform that enables rapid development, management, and scaling of IoT projects. 
Our goal is to provide the out-of-the-box IoT cloud or on-premises solution that will enable server-side infrastructure for your IoT applications. 

#### Features

With WinstarCloud, you are able to:

 - Provision devices, assets and customers, and define relations between them.
 - Collect and visualize data from devices and assets. 
 - Analyze incoming telemetry and trigger alarms with complex event processing.
 - Control your devices using remote procedure calls (RPC).
 - Build work-flows based on a device life-cycle event, REST API event, RPC request, etc.
 - Design dynamic and responsive dashboards and present device or asset telemetry  and insights to your customers.  
 - Enable use-case specific features using customizable rule chains.
 - Push device data to other systems.
 - Much more...
 
See [**WinstarCloud features list**](/docs/{{docsPrefix}}#features) for more features and useful links to the specific feature documentation. 

{% if docsPrefix == null %}
<object width="100%" data="/images/reference/winstarcloud-architecture.svg"></object>
{% endif %}
{% if (docsPrefix == "pe/") or (docsPrefix == "paas/") %}
<object width="100%" data="/images/reference/winstarcloud-architecture-pe.svg"></object>
{% endif %}

#### Architecture

WinstarCloud is designed to be:

* **scalable**: the horizontally scalable platform, built using leading open-source technologies.
* **fault-tolerant**: no single-point-of-failure, every node in the cluster is identical.
* **robust and efficient**: a single server node can handle tens or even hundreds of thousands of devices, depending on the use-case. 
WinstarCloud cluster can handle millions of devices.
* **customizable**: adding new functionality is easy with customizable widgets and rule engine nodes.
* **durable**: never lose your data.

{% if docsPrefix != "paas/" %}

See [**WinstarCloud Architecture**](/docs/{{docsPrefix}}reference) for more details.

{% endif %}

#### Ready to get started?

<p><a href="/docs/{{docsPrefix}}getting-started-guides/helloworld" class="button">Hello World Application</a></p>

{% if (docsPrefix == "pe/") %}
#### WinstarCloud as a Google IoT Core alternative

<p><a href="/google-iot-core-alternative" class="button">Learn more</a></p>

{% endif %}
