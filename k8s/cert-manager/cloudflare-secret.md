apiVersion: v1
kind: Secret
namespace: cert-manager
metadata:
    name: cloudflare-api-token-secret
type: Opaque
stringData:
    api-token: <API TOKEN>