# Send subscribe attributes request with 20 seconds timeout. Replace $WINSTARCLOUD_HOST_NAME and $ACCESS_TOKEN with corresponding values.
curl -v -X GET http://$WINSTARCLOUD_HOST_NAME/api/v1/$ACCESS_TOKEN/attributes/updates?timeout=20000
# For example, $WINSTARCLOUD_HOST_NAME reference live demo server, $ACCESS_TOKEN is ABC123:
curl -v -X GET https://demo.winstarcloud.io/api/v1/ABC123/attributes/updates?timeout=20000