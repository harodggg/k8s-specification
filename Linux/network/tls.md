# tls 1.2


# tls 1.3
  - "TLS_AES_128_GCM_SHA256"
  -  "TLS_AES_256_GCM_SHA384"
  -  "TLS_CHACHA20_POLY1305_SHA256"

# cert 
    1. DNS CAA - (限定发行证书的机构，不限定，任意机构发行任意域名证书)
    2. OCSP - (检测证书有效性,替换CRL)
        - OCSP 存在隐私，不安全问题，使用OCSP stapling
        - 证书一般2年，或者90天到期。用户可能会提前注销证书，所以需要这个协议检查证书是不是有效。
        - 响应数据比CRL小
        - 响应要解析的数据小
    3. PKI - (Public Key Infrastructure)
    4. CRL(certificate revocation list) - (维护一个被废弃证书列表)
        - CRL不可用，服务不可用
        - 撤销证书太多，网络资源浪费