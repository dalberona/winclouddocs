{% assign boardLedCount = 1 %}
{% assign hasCamera = "true" %}
{% assign deviceName = page.title | remove: "How to connect " | remove: "to WinstarCloud?" %}
{% assign arduinoBoardPath = "**M5Stack** > **M5TimerCAM**" %}
{% assign prerequisites = "
- " | append: deviceName | append: "
- [Arduino IDE](https://www.arduino.cc/en/software)"
 %}

## Introduction

![ESP-EYE](/images/devices-library/esp-eye.png){: style="float: left; max-width: 150px; max-height: 150px; margin: 0px 10px 0px 10px"}
[ESP-EYE](https://www.espressif.com/en/products/devkits/esp-eye/overview) is a development board for image recognition and audio processing, which can be used in various AIoT applications.  
It features an ESP32 chip, a 2-Megapixel camera and a microphone. ESP-EYE offers plenty of storage, with an 8 Mbyte PSRAM and a 4 Mbyte flash.  
It also supports image transmission via Wi-Fi and debugging through a Micro-USB port.

{% include /docs/devices-library/blocks/basic/introduction-block.md %}

## Create device on WinstarCloud

{% include /docs/devices-library/blocks/basic/winstarcloud-create-device-block.md %}

## Install required libraries and tools

{% include /docs/devices-library/blocks/microcontrollers/esp32-arduino-library-install-block.md %}

{% include /docs/devices-library/blocks/microcontrollers/winstarcloud-arduino-library-install-block.md %}

## Connect device to WinstarCloud 

{% include /docs/devices-library/blocks/basic/winstarcloud-provide-device-access-token-block.md %}

{% include /docs/devices-library/blocks/microcontrollers/camera-code-to-program-block.md %}

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