
{% assign hasDisplay = "true" %}
{% assign deviceName = page.title | remove: "How to connect " | remove: "to WinstarCloud?" %}
{% assign arduinoBoardPath = "**ESP32** > **WEMOS LOLIN32**" %}
{% assign OLEDInstallationRequired = "true" %}
{% assign prerequisites = "
- " | append: deviceName | append: "
- [Arduino IDE](https://www.arduino.cc/en/software)"
 %}

## Introduction

![{{deviceName}}](/images/devices-library/{{page.deviceImageFileName}}){: style="float: left; max-width: 200px; max-height: 200px; margin: 0px 10px 0px 0px"}

{{deviceName}} is an ESP32 development board with a built-in 128×64 pixels SSD1306 OLED display.  
The display communicates with the ESP32 via I2C communication protocol.  
ESP32 has integrated antenna and power amplifier, low noise amplifier, filter and supply management module.

{% include /docs/devices-library/blocks/basic/introduction-block.md %}

## Create device on WinstarCloud

{% include /docs/devices-library/blocks/basic/winstarcloud-create-device-block.md %}

## Install required libraries and tools

{% include /docs/devices-library/blocks/microcontrollers/esp32-arduino-library-install-block.md %}

{% include /docs/devices-library/blocks/microcontrollers/winstarcloud-arduino-library-install-block.md %}

## Connect device to WinstarCloud 

{% include /docs/devices-library/blocks/basic/winstarcloud-provide-device-access-token-block.md %}

{% include /docs/devices-library/blocks/microcontrollers/oled-example-code-to-program-block.md %}

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
 