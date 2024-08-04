# Post client-side rpc request. Replace $WINSTARCLOUD_EDGE_HOST_NAME and $ACCESS_TOKEN with corresponding values.
curl -X POST -d @rpc-client-request.json http://$WINSTARCLOUD_EDGE_HOST_NAME/api/v1/$ACCESS_TOKEN/rpc --header "Content-Type:application/json"
# For example, $WINSTARCLOUD_EDGE_HOST_NAME reference localhost:8080, $ACCESS_TOKEN is ABC123:
curl -X POST -d @rpc-client-request.json http://localhost:8080/api/v1/ABC123/rpc --header "Content-Type:application/json"