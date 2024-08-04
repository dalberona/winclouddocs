{% capture jks_files_location %}
**Make sure the certificate files are reachable by WinstarCloud process:**

* Linux: use */etc/winstarcloud/conf* folder. Make sure the files have same permissions as *winstarcloud.conf*; Use relative file path, e.g. *keystore.p12*;
* Docker Compose: mount or use existing volume to */config* folder of the container; Use full file path, e.g. */config/keystore.p12*;
* K8S: mount separate volume to */https-config* or similar folder. Use full file path, e.g. */https-config/keystore.p12*;
* Windows: use *C:\Program Files (x86)\winstarcloud\conf\\* folder. Make sure the files have same permissions as *winstarcloud.conf*; Use relative file path, e.g. *keystore.p12*;

{% endcapture %}
{% include templates/warn-banner.md content=jks_files_location %}