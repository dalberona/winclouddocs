# Send rpc request with 20 seconds timeout. Replace $WINSTARCLOUD_EDGE_HOST_NAME and $ACCESS_TOKEN with corresponding values.
curl -v -X GET http://$WINSTARCLOUD_EDGE_HOST_NAME/api/v1/$ACCESS_TOKEN/rpc?timeout=20000
# For example, $WINSTARCLOUD_EDGE_HOST_NAME reference localhost:8080, $ACCESS_TOKEN is ABC123:
curl -v -X GET http://localhost:8080/api/v1/ABC123/rpc?timeout=20000