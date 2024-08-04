# Send HTTP attributes request. Replace $WINSTARCLOUD_EDGE_HOST_NAME and $ACCESS_TOKEN with corresponding values.
curl -v -X GET "http://$WINSTARCLOUD_EDGE_HOST_NAME/api/v1/$ACCESS_TOKEN/attributes?clientKeys=attribute1,attribute2&sharedKeys=shared1,shared2"
# For example, $WINSTARCLOUD_EDGE_HOST_NAME reference localhost:8080, $ACCESS_TOKEN is ABC123:
curl -v -X GET "http://localhost:8080/api/v1/ABC123/attributes?clientKeys=attribute1,attribute2&sharedKeys=shared1,shared2"