# Send HTTP attributes request. Replace $WINSTARCLOUD_HOST_NAME and $ACCESS_TOKEN with corresponding values.
curl -v -X GET "http://$WINSTARCLOUD_HOST_NAME/api/v1/$ACCESS_TOKEN/attributes?clientKeys=attribute1,attribute2&sharedKeys=shared1,shared2"
# For example, $WINSTARCLOUD_HOST_NAME reference live demo server, $ACCESS_TOKEN is ABC123:
curl -v -X GET "https://demo.winstarcloud.io/api/v1/ABC123/attributes?clientKeys=attribute1,attribute2&sharedKeys=shared1,shared2"