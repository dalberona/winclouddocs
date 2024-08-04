
{% assign boardLedCount = 1 %}
{% assign deviceName = page.title | remove: "How to connect " | remove: "to WinstarCloud?" %}
{% assign arduinoBoardPath="**ESP8266** > **NodeMCU 1.0 (ESP-12E Module)**" %}
{% assign prerequisites = "
- " | append: deviceName | append: "
- [Arduino IDE](https://www.arduino.cc/en/software)"
 %}

## Introduction

![{{deviceName}}](/images/devices-library/{{page.deviceImageFileName}}){: style="float: left; max-width: 200px; max-height: 200px; margin: 0px 10px 0px 0px"}

The NodeMCU is quite a popular development board that is broadly implemented across the internet world.
It is based on the ESP-12E Wi-Fi module that is perfectly associated with the combination of easy programming elements with Arduino IDE as well as Wi-Fi capability.
The prototyping and development projects can be handled smoothly via the inbuilt programmer and CP2102 USB-to-serial chip that flashes the ESP8266 and serial output on PC integration.
The NodeMCU development board integrates ESP8266.  It is a well-integrated chip that is specifically crafted to cater to the requirements of a new connected world.
The unit allows to either host the application or to offload all Wi-Fi networking functions derived from another application processing unit.

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
