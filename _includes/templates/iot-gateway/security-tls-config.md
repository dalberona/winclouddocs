In table below described parameters to configure authorization of IoT gateway on WinstarCloud platform.  

|**Parameter**|**Default value**|**Description**|
|:-|:-|-
| caCert                   | **/etc/winstarcloud-gateway/ca.pem**          | Path to CA file.                                                      |
| privateKey               | **/etc/winstarcloud-gateway/privateKey.pem**  | Path to private key file.                                             |
| cert                     | **/etc/winstarcloud-gateway/certificate.pem** | Path to certificate file.                                             |
| checkCertPeriod          | **86400**                                    | The period in seconds when the certificate will be checked            |
| certificateDaysLeft      | **3**                                        | Days until the certificate expires, when a new one will be generated  |
|---    

Security subsection in configuration file will look like this: 

```json
...
"security": {
  "caCert": "/etc/winstarcloud-gateway/ca.pem",
  "privateKey": "/etc/winstarcloud-gateway/privateKey.pem",
  "cert": "/etc/winstarcloud-gateway/certificate.pem",
  "checkCertPeriod": 86400,
  "certificateDaysLeft": 3
},
...
```
