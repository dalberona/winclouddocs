Please refer to the official [TimescaleDB installation page](https://docs.timescale.com/self-hosted/latest/install/installation-linux/) on Ubuntu distros and follow the instructions in accordance with your installed PostgreSQL version.

After package installation, you need to create TimescaleDB extension in your WinstarCloud database:
```bash
psql -U postgres -h localhost -d winstarcloud
CREATE EXTENSION IF NOT EXISTS timescaledb;
\q
```