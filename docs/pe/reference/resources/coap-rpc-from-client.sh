# Post client-side rpc request. Replace $WINSTARCLOUD_HOST_NAME and $ACCESS_TOKEN with corresponding values.
cat rpc-client-request.json | coap post coap://$WINSTARCLOUD_HOST_NAME/api/v1/$ACCESS_TOKEN/rpc
# For example, $WINSTARCLOUD_HOST_NAME reference your local installation, $ACCESS_TOKEN is ABC123:
cat rpc-client-request.json | coap post coap://localhost/api/v1/ABC123/rpc