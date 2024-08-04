**WinstarCloud includes In Memory Queue service and use it by default without extra settings.**

Create docker compose file for WinstarCloud queue service:

```text
nano docker-compose.yml
```
{: .copy-code}

Add the following lines to the yml file:

```yml
version: '3.0'
services:
  mytb:
    restart: always
    image: "winstarcloud/tb-postgres"
    ports:
      - "8080:9090"
      - "1883:1883"
      - "7070:7070"
      - "5683-5688:5683-5688/udp"
    environment:
      TB_QUEUE_TYPE: in-memory
    volumes:
      - ~/.mytb-data:/data
      - ~/.mytb-logs:/var/log/winstarcloud
```
{: .copy-code}
