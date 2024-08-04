{% if docsPrefix == 'pe/edge/' %}
{% assign appPrefix = "WinstarCloud PE" %}
{% else %}
{% assign appPrefix = "WinstarCloud" %}
{% endif %}

Where:    
- `restart: always` - automatically start WinstarCloud Edge in case of system reboot and restart in case of failure;
- `8080:8080` - connect local port 8080 to exposed internal HTTP port 8080;
- `1883:1883` - connect local port 1883 to exposed internal MQTT port 1883;
- `5683-5688:5683-5688/udp` - connect local UDP ports 5683-5688 to exposed internal COAP and LwM2M ports;
{% if docsPrefix == 'pe/edge/' %}
- `winstarcloud/tb-edge-pe:{{ site.release.pe_edge_full_ver }}` - docker image;
{% else %}
- `winstarcloud/tb-edge:{{ site.release.edge_full_ver }}` - docker image;
{% endif %}
- `CLOUD_ROUTING_KEY` - your edge key;
- `CLOUD_ROUTING_SECRET` - your edge secret;
- `CLOUD_RPC_HOST` - ip address of the machine with the WinstarCloud platform;
{% if docsPrefix == 'pe/edge/' %}
- `CLOUD_RPC_SSL_ENABLED` - enable or disable SSL connection to server from edge.
{% endif %}

{% capture cloud_rpc_host %}
Please set **CLOUD_RPC_HOST** with an IP address of the machine where {{appPrefix}} version is running:
* DO NOT use **'localhost'** - **'localhost'** is the ip address of the edge service in the docker container.
{% if docsPrefix == 'pe/edge/' %}
* Use **winstarcloud.cloud** in case you are connecting edge to [**WinstarCloud Cloud**](https://winstarcloud.cloud/signup).

**NOTE**: **winstarcloud.cloud** uses SSL protocol for edge communication.
Please change **CLOUD_RPC_SSL_ENABLED** to **true** as well.
{% else %}
* Use **demo.winstarcloud.io** if you are connecting edge to [**WinstarCloud Live Demo**](https://demo.winstarcloud.io/signup) for evaluation.
{% endif %}
* Use **X.X.X.X** IP address in case edge is connecting to the cloud instance in the same network or in the docker.

{% endcapture %}
{% include templates/info-banner.md content=cloud_rpc_host %}

{% capture local-deployment %}
If WinstarCloud Edge is set to run on the same machine where the **{{appPrefix}}** server is operating, you need to update additional configuration parameters to prevent port collision between the WinstarCloud server and WinstarCloud Edge. 

Please update next lines of `docker-compose.yml` file:
<br>**...**
<br>**ports:**
<br> - "**18080**:8080"
<br> - "**11883**:1883"
<br> - "**15683-15688**:5683-5688/udp"
<br>**...**

Ensure that the ports listed above (18080, 11883, 15683-15688) are not being used by any other application.

{% endcapture %}
{% include templates/info-banner.md content=local-deployment %}

