Then, press "Ctrl+D" to return to main user console.

After configuring the password, connect to the database to create winstarcloud DB:

```bash
psql -U postgres -d postgres -h 127.0.0.1 -W
```
{: .copy-code}

Execute create database statement

```bash
CREATE DATABASE winstarcloud;
\q
```
{: .copy-code}