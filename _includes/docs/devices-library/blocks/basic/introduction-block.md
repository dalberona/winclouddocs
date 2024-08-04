
In this guide, we will learn how to [create device on Winstarcloud](#create-device-on-winstarcloud), [install required libraries and tools](#install-required-libraries-and-tools).  
After this we will [modify our code and upload it to the device](#connect-device-to-winstarcloud), and [check the results of our coding and check data on WinstarCloud using imported dashboard](#check-data-on-winstarcloud).
Our device will synchronize with WinstarCloud using [client and shared attributes requests functionality](#synchronize-device-state-using-client-and-shared-attribute-requests).      
Of course, we will control our device using provided functionality like [shared attributes](#control-device-using-shared-attributes) or [RPC requests](#control-device-using-rpc).  

### Prerequisites

To continue with this guide we will need the following:  
{{ prerequisites }}
{% if page.docsPrefix == "pe/" or page.docsPrefix == "paas/" or docsPrefix == "pe/" or docsPrefix == "paas/" %}
- [WinstarCloud account](https://winstarcloud.cloud){: target="_blank"}
{% else %}
- [WinstarCloud account](https://demo.winstarcloud.io){: target="_blank"}
{% endif %}
