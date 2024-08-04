# Publish response to RPC request. Replace $WINSTARCLOUD_EDGE_HOST_NAME and $ACCESS_TOKEN with corresponding values.
curl -v -X POST -d @rpc-response.json http://$WINSTARCLOUD_EDGE_HOST_NAME/api/v1/$ACCESS_TOKEN/rpc/1 --header "Content-Type:application/json"
# For example, $WINSTARCLOUD_EDGE_HOST_NAME reference localhost:8080, $ACCESS_TOKEN is ABC123:
curl -v -X POST -d @rpc-response.json http://localhost:8080/api/v1/ABC123/rpc/1 --header "Content-Type:application/json"