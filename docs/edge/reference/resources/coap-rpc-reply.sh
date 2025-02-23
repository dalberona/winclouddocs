# Publish response to RPC request. Replace $WINSTARCLOUD_EDGE_HOST_NAME and $ACCESS_TOKEN with corresponding values.
coap-client -f rpc-response.json -m post coap://$WINSTARCLOUD_EDGE_HOST_NAME/api/v1/$ACCESS_TOKEN/rpc/1
# For example, $WINSTARCLOUD_EDGE_HOST_NAME reference localhost, $ACCESS_TOKEN is ABC123:
coap-client -f rpc-response.json -m post coap://localhost/api/v1/ABC123/rpc/1