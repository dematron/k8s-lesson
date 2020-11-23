TOKEN=""

curl -k --insecure \
    -X GET \
    -H "Authorization: Bearer $TOKEN" \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    https://localhost:8443/api/v1/namespaces/kube-system/pods/hello-world-f95c7465b-6pp94:8080/proxy/world