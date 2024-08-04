* TOC
{:toc}

In this comprehensive guide, we will walk you through the process of connecting an OPC-UA device to the WinstarCloud platform via SIA Connect. 

The [SIA Connect](https://sia-connect.com/){:target="_blank"} is a tool that enables this process. 
By connecting your OPC-UA device to the WinstarCloud platform, you can monitor, control, and automate your devices in a highly scalable and flexible way. Stay tuned as we guide you step by step through this process.

{% capture difference %}
Before proceeding with this guide, it's recommended that you follow [Getting Started](/docs/{{docsPrefix}}getting-started-guides/helloworld/){:target="_blank"} guide to become familiar with WinstarCloud devices and dashboards. This will enhance your learning experience and understanding of the concepts presented here.
{% endcapture %}
{% include templates/info-banner.md content=difference %}

## Creating device on WinstarCloud

For simplicity, we will provide the device manually using the UI:

{% include images-gallery.liquid showListImageTitles="true" imageCollection="creating-device-on-winstarcloud" %}

## Launching demo OPC-UA server

We will use docker image as a demo OPC-UA server, which can be installed and run using the following command:

```text
docker run -it -p 4840:4840 winstarcloud/tb-gw-opcua-server:latest
```
{: .copy-code}

After running the docker image, you will see the following logs in your terminal:

![image](/images/user-guide/integrations/sia-connect/terminal-opc-ua.png)

## Setup SIA Connect

#### Installing SIA Connect

In our case, we installed SIA Connect as a <b>.deb</b> package. You can find the official installation guide [here](https://help.sia-connect.com/en_US/linux-installation/install-sia-connect-on-linux){:target="_blank"}. Additionally, you can install SIA Connect as a Docker image [here](https://help.sia-connect.com/en_US/docker/install-sia-connect-using-docker){:target="_blank"}.
After successful installation, navigate to the default host <b>127.0.0.1:80</b> where the Web UI is running (host might differ, depending on your settings).

{% include images-gallery.liquid imageCollection="installing-sia-connect" %}

You need to log in and provide your LICENSE key. Alternatively, you can use the demo version, which has a 30-minute session limit.

#### Installing OPC-UA connector

Now, we have to download <b>OPC-UA</b> connector. For this purpose, follow these steps:

- Navigate to "<b>Connectors</b>" page in the side menu;
- Click on "<b>Search for Connector to download & install</b>" input field, and start typing the connector name - "<b>OPC-UA</b>";
- Find "<b>OPC-UA Client</b>", and download it by clicking the appropriate button.

<b>OPC-UA</b> connector installed.

{% include images-gallery.liquid imageCollection="installing-opc-ua-connector" %}

#### Installing MQTT connector

Also, we need to download <b>MQTT</b> connector to establish connection with WinstarCloud. The steps are as for downloading MQTT connector:

- Go to "<b>Connectors</b>" page in the side menu;
- Click on "<b>Search for Connector to download & install</b>" input field and type "<b>MQTT</b>";
- Find "<b>MQTT</b>", and download it by clicking the appropriate button. 

<b>MQTT</b> connector installed.

{% include images-gallery.liquid imageCollection="installing-mqtt-connector" %}

## Adding instances

To connect our test device, we need to create two instances:

- One for the device - this instance will connect to the demo OPC-UA server and receive data from it;
- One for WinstarCloud - this instance will map data from the device instance, convert it to a suitable format, and send data to WinstarCloud.

#### Adding OPC-UA Device instance

First of all, we need to create OPC-UA Device instance, for this purpose, follow the steps below:

- Go to "<b>Instance</b>" tab in the side menu and click "<b>+ Add new instance</b>" button;
- Fill in the input fields:
  - "<b>Name</b>" - "<b>OPC-UA Device</b>";
  - "<b>Address</b>" - "<b>opc.tcp://127.0.0.1:4840/freeopcua/server/</b>";
- Disable security settings;
- Click the "<b>Save instance</b>" button.

OPC-UA Device instance added.

{% include images-gallery.liquid imageCollection="adding-opc-ua-device-instance-1" %}

Also, we need to create an item. An item represents a data point inside the instance. E.g a tag in a PLC, a topic on MQTT broker, an endpoint on REST API, or a query in database. Follow the steps below to add a new item to OPC-UA Device instance:

- Click on "<b>+ New item</b>" in the "<b>Items</b>" section;'
- Fill in the input fields:
  - "<b>Name</b>" - "<b>Temperature</b>"; 
  - Set the "<b>Read write</b>" field to "<b>Read only</b>" option;
  - "<b>Identifier</b>" - "<b>ns=2;i=13</b>"; 
- Click the "<b>Save item</b>" button.

You will now see the "<b>Temperature</b>" item added.

{% include images-gallery.liquid imageCollection="adding-opc-ua-device-instance-2" %}

Add other items, such as "<b>Power</b>" and "<b>Humidity</b>", by following the steps described above.

| **Item Name** | **Identifier** |
|:--------------|:---------------|
| Power         | **ns=2;i=14**  |
| Humidity      | **ns=2;i=15**  |

So, in the final result, you will have the following list of items:

{% include images-gallery.liquid imageCollection="adding-opc-ua-device-instance-3" %}

#### Adding WinstarCloud instance

This instance will map data from the device instance, convert it to a suitable format, and send data to WinstarCloud. To add a new instance, use follow these steps:

- Go to the <b>"Instance"</b> tab in the side menu and click <b>"+ Add new instance"</b> button;
- Fill in the input fields:
  - "<b>Name</b>" - "<b>WinstarCloud</b>";
  - "<b>Address</b>" - "<b>your WinstarCloud host</b>". In our case - <b>winstarcloud.cloud</b>;
  - <b>"Port"</b> - "<b>1883</b>";
  - Fill in the values specified in [your device credentials](#creating-device-on-winstarcloud) for the <b>"Username"</b>, <b>"Device id"</b>, and <b>"Password"</b> fields]
-  Click <b>"Save instance"</b> button.

WinstarCloud instance has been added.

{% include images-gallery.liquid imageCollection="adding-winstarcloud-instance-1" %}

Now, we have to add new item. For this purpose, follow these steps:

- Click on the <b>"+ New item"</b> in the "<b>Items</b>" section;
- Fill in the input fields:
  - "<b>Name</b>" - "<b>Publish data</b>";
  - Set "<b>Read write</b>" field to <b>"Write only"</b> option;
  - "<b>Topic</b>" - "<b>v1/devices/me/telemetry</b>";
  - "<b>Input template</b>" - "<b>{&#37;ITEM.NAME&#37;: &#37;VALUE&#37;}</b>"; 
- Click on <b>"Save item"</b> button.

<b>Publish data</b> item has been added.

{% include images-gallery.liquid imageCollection="adding-winstarcloud-instance-2" %}

And finally, we have to add mapping. A mapping is a virtual connection between two items which will handle data transmission between the two  (e.g. a mapping from a PLC item to a MQTT item). For this purpose, follow these steps:

- Click on the <b>"+ New mapping"</b> in the "<b>Mappings on WinstarCloud</b>" section;
- For "<b>Sender Item</b>" select "<b>OPC-UA Device</b>" as instance and "<b>Temperature</b>" as "<b>Item</b>"; 
- For "<b>Receiver item</b>" select "<b>WinstarCloud</b>" as "<b>Instance</b>" and "<b>Publish data</b>" as "<b>Item</b>"; 
- Click on "<b>Save mapping</b>" button.
 
Mapping has been added.

{% include images-gallery.liquid imageCollection="adding-winstarcloud-instance-3" %}

Add other mappings, such as "<b>Power</b>" and "<b>Humidity</b>", by following the steps described above.

After completing these steps, you will have the following list of mappings:

{% include images-gallery.liquid imageCollection="adding-winstarcloud-instance-4" %}

## Check data on WinstarCloud

Once you have successfully done all the steps above and SIA Connect has sent data, you can view it in the "Latest telemetry" tab of the device in your WinstarCloud instance:

- Navigate to the "<b>Devices</b>" page of the "<b>Entities</b>" section of your <b>WinstarCloud</b> instance;
- Click on the OPC-UA Device row in the table to open device details;
- Navigate to the "<b>Latest telemetry</b>" tab.

You should see incoming data displayed.

{% include images-gallery.liquid imageCollection="check-data-on-winstarcloud" %}

## Change OPC-UA node values using shared attributes

In this section, we will configure SIA Connect to modify the value of an OPC-UA node. Specifically, we will be changing the device status node.

For this purpose we need to create one more item in <b>WinstarCloud</b> instance of the <b>SIA Connect</b>, like the following:

- Go to the "<b>Instance</b>" tab in the side menu and select "<b>WinstarCloud</b>";
- Click on the "<b>+ New item</b>" in the "<b>Items</b>" section;
- Fill in the input fields:
  - "<b>Name</b>" - "<b>Shared attribute update</b>"; 
  - Set "<b>Read write</b>" select field to "<b>Read only</b>" option;
  - "<b>Topic</b>" - "<b>v1/devices/me/attributes</b>";
- Click on "<b>Save item</b>" button. 

Item has been added.

{% include images-gallery.liquid imageCollection="shared-attributes" %}

Also, we need to create item on **OPC-UA Device** instance, for this purpose, follow these steps:

- Go to the "<b>Instance</b>" tab in the side menu and select <b>OPC-UA Device</b>;
- Click on the "<b>+ New item</b>" in the "<b>Items</b>" section;
- Fill in the input fields:
  - "<b>Name</b>" - "<b>Status</b>";
  - Set "<b>Read write</b>" select field to "<b>Read and Write</b>";
  - "<b>Post-processing (reading)</b>" - <b>“%VALUE%”</b>;
  - "<b>Identifier</b>" - "<b>ns=4;s=Status_s</b>";
- Click on "<b>Save item</b>" button.
 
Item added.

{% include images-gallery.liquid imageCollection="status-attributes" %}

The next step is to create another mapping for data transmission between the WinstarCloud instance and the OPC-UA Device. For this purpose, follow the steps below:

- On the <b>WinstarCloud</b> instance, scroll down to "<b>Mappings</b>" section and click on "<b>+ New Mapping</b>" button;
- For "<b>Sender Item</b>" select "<b>WinstarCloud</b>" as instance and "<b>Shared attribute update</b>" as "<b>Item</b>"; 
- For "<b>Receiver item</b>" select "<b>OPC-UA Device</b>" as instance and "<b>Status</b>" as "<b>Item</b>";
- Paste "<b>%VALUE.status%</b>" to the "<b>Custom value</b>" field; 
- Click on "<b>Save mapping</b>" button.

{% include images-gallery.liquid imageCollection="create-another-mapping" %}

Finally, we need to create shared attribute on the device on WinstarCloud platform. For this purpose, follow these steps:

- Go to the "<b>Devices</b>" page of the "<b>Entities</b>" section of your <b>WinstarCloud</b> instance;
- Click on "<b>OPC-UA Device</b>", and navigate to the "<b>Attributes</b>" tab;
- Select "<b>Shared attributes</b>" from dropdown field and click on "<b>plus</b>" button to create a new one;
- Fill in "<b>Key</b>" field with "<b>status</b>" value and select "<b>Boolean</b>" data type from dropdown field;
- Click on "<b>Add</b>" button.

Shared attribute has been added.

{% include images-gallery.liquid imageCollection="shared-attribute-on-device" %}

## Visualize data on WinstarCloud

To visualize data from Sia Connect, we will create [the dashboard](/docs/{{docsPrefix}}user-guide/dashboards/){:target="_blank"}:

- First, download the [sia_connect.json](/docs/pe/user-guide/resources/sia_connect.json){:target="_blank"} file;

{% include images-gallery.liquid showListImageTitles="true" imageCollection="import-dashboard" %}

After importing the dashboard, verify that your OPC-UA Device is specified in the [entity alias](/docs/{{docsPrefix}}user-guide/ui/aliases/){:target="_blank"}. This ensures that the data will be displayed correctly.

{% include images-gallery.liquid showListImageTitles="true" imageCollection="change-entity-alias-1" %}

If you have followed these steps correctly, you should now see this dashboard populated with data from the OPC-UA Device.

{% include images-gallery.liquid imageCollection="visualize-data-on-winstarcloud" %}

## Conclusion

By following the instructions provided in this guide, you'll be able to effortlessly establish a connection between your OPC-UA device and the WinstarCloud platform using SIA Connect. 
This comprehensive guide has been carefully designed to provide you with all the necessary information and steps needed to successfully set up this connection. 
So whether you're a seasoned expert or a beginner, this guide will make the process simple and straightforward.