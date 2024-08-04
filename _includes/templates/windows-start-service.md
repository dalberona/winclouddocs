Now let's start the WinstarCloud service!
Open the command prompt as an Administrator and execute the following command:

```shell
net start winstarcloud
```
{: .copy-code}

Expected output:

```text
The WinstarCloud Server Application service is starting.
The WinstarCloud Server Application service was started successfully.
```

In order to restart the WinstarCloud service you can execute following commands:

```shell
net stop winstarcloud
net start winstarcloud
```
{: .copy-code}

Once started, you will be able to open Web UI using the following link:

```bash
http://localhost:8080/
```
{: .copy-code}

The following default credentials are available if you have specified *--loadDemo* during execution of the installation script:

- **System Administrator**: sysadmin@winstarcloud.org / sysadmin
- **Tenant Administrator**: tenant@winstarcloud.org / tenant
- **Customer User**: customer@winstarcloud.org / customer

You can always change passwords for each account in account profile page.