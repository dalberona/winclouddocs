
{% assign deviceName = page.title | remove: "How to connect " | remove: "to WinstarCloud?" %}
{% assign deviceVendorLink = "https://fusiondaq.com/product/mixed-input-8-channel-analog-cellular-logger/" %} 
{% assign prerequisites = '
- <a href="' | append: deviceVendorLink | append: '" target="_blank">' | append: deviceName | append: '</a>
- [Read user manual (Optional)](https://fusiondaq.com/wp-content/uploads/2023/01/LTEdaq_OperatingManual-1.pdf)
'
 %}

## Introduction

![{{deviceName}}](/images/devices-library/{{page.deviceImageFileName}}){: style="float: left; max-width: 200px; max-height: 200px; margin: 0px 10px 0px 0px"}

The FDQ-99900 MI-8 is a compact, 24-bit data acquisition system (DAQ) designed to measure up to ten external sensors then log values locally to an SD card or push data to the cloud over a cellular data connection.  
Advanced triggering functionality allows the MI-8 to conserve storage space and network data by only transmitting events of interest.  
The low power consumption and wide operating temperature range are designed to allow outdoor and remote installations.  
The MI-8 is available with and without an enclosure to support custom packaging solutions. For example, the enclosureless (OEM) configuration is often mounted into an IP-67 rated NEMA enclosure along with supporting sensors and hardware.  

In this guide, we will learn how to [create device on Winstarcloud](#create-device-on-winstarcloud).  
After this we will [configure and connect the device](#connect-device-to-winstarcloud), and [check the data on WinstarCloud](#check-data-on-winstarcloud).  

### Prerequisites

To continue with this guide we will need the following:  
{{ prerequisites }}
{% if page.docsPrefix == "pe/" or page.docsPrefix == "paas/" %}
- [WinstarCloud account](https://winstarcloud.cloud)
{% else %}
- [WinstarCloud account](https://demo.winstarcloud.io)
{% endif %}

## Create device on WinstarCloud

{% include /docs/devices-library/blocks/basic/winstarcloud-create-device-block.md %}

## Connect device to WinstarCloud 

{% include /docs/devices-library/blocks/basic/winstarcloud-provide-device-access-token-block.md %}

{% include /docs/devices-library/blocks/ready-to-go-devices/mixed-input-8-channel-analog-cellular-logger-configuration-block.md %}

## Check data on WinstarCloud

{% include /docs/devices-library/blocks/ready-to-go-devices/mixed-input-8-channel-analog-cellular-logger-check-data-block.md %}

## Conclusion

{% include /docs/devices-library/blocks/basic/conclusion-block.md %}
