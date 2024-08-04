# Publish serial number and firmware version attributes
# replace $WINSTARCLOUD_PORT with 8080 (in case of local installation) or 80 (in case of live-demo).
curl -v -X POST -d @attributes-data.json http://$WINSTARCLOUD_HOST:$WINSTARCLOUD_PORT/api/v1/$ACCESS_TOKEN/attributes --header "Content-Type:application/json"
# Publish timeseries data as an object without timestamp (server-side timestamp will be used)
# replace $WINSTARCLOUD_PORT with 8080 (in case of local installation) or 80 (in case of live-demo).
curl -v -X POST -d @telemetry-data.json http://$WINSTARCLOUD_HOST:$WINSTARCLOUD_PORT/api/v1/$ACCESS_TOKEN/telemetry --header "Content-Type:application/json"