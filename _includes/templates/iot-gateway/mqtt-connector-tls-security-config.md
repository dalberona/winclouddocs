The table below describes the parameters required to configure authorization on MQTT broker.

|**Parameter**|**Default value**|**Description**|
|:-|:-|-
| caCert                   | **/etc/winstarcloud-gateway/ca.pem**          | Path to CA file.                                               |
| privateKey               | **/etc/winstarcloud-gateway/privateKey.pem**  | Path to private key file.                                      |
| cert                     | **/etc/winstarcloud-gateway/certificate.pem** | Path to certificate file.
|---    

Security subsection in configuration file will look like this: 

```json
"security":{
    "type": "certificates",
    "caCert": "/etc/winstarcloud-gateway/ca.pem",
    "privateKey": "/etc/winstarcloud-gateway/privateKey.pem",
    "cert": "/etc/winstarcloud-gateway/certificate.pem"
}
```
