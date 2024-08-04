
{% assign boardLedCount = 1 %}
{% assign deviceName = page.title | remove: "How to connect " | remove: "to WinstarCloud?" %}
{% assign arduinoBoardPath="**ESP8266** > **LOLIN(WEMOS) D1 R2 & mini**" %}
{% assign prerequisites = "
- " | append: deviceName | append: "
- [Arduino IDE](https://www.arduino.cc/en/software)"
 %}

## Introduction

![{{deviceName}}](/images/devices-library/{{page.deviceImageFileName}}){: style="float: left; max-width: 200px; max-height: 200px; margin: 0px 10px 0px 0px"}

The WeMos D1 board, developed by WeMos company, is based on the ESP8266 ESP-12 WiFi module.  
Board programming is carried out using the standard Arduino IDE development environment.  
The controller includes a processor, peripherals, RAM and input/output devices.  
Most often, microcontrollers are used in computer equipment, household appliances and other electronic devices.  
WeMos is distinguished by its low cost and ease of connection and programming.  

{% include /docs/devices-library/blocks/basic/introduction-block.md %}

## Create device on WinstarCloud

{% include /docs/devices-library/blocks/basic/winstarcloud-create-device-block.md %}

## Install required libraries and tools

{% include /docs/devices-library/blocks/microcontrollers/esp8266-arduino-library-install-block.md %}

{% include /docs/devices-library/blocks/microcontrollers/winstarcloud-arduino-library-install-block.md %}

## Connect device to WinstarCloud 

{% include /docs/devices-library/blocks/basic/winstarcloud-provide-device-access-token-block.md %}

{% include /docs/devices-library/blocks/microcontrollers/general-code-to-program-block.md %}

## Check data on WinstarCloud

{% include /docs/devices-library/blocks/basic/winstarcloud-upload-example-dashboard.md %}

{% include /docs/devices-library/blocks/microcontrollers/winstarcloud-check-example-data-block.md %}

## Synchronize device state using client and shared attribute requests

{% include /docs/devices-library/blocks/microcontrollers/winstarcloud-synchronize-device-state-using-attribute-requests-block.md %}

## Control device using shared attributes

{% include /docs/devices-library/blocks/microcontrollers/winstarcloud-update-shared-attributes-device-block.md %}

## Control device using RPC

{% include /docs/devices-library/blocks/microcontrollers/winstarcloud-send-rpc-to-device-block.md %}

## Conclusion
{% include /docs/devices-library/blocks/basic/conclusion-block.md %}
