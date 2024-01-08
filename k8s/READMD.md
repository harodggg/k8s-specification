## CRI(container runtime interface)
- containerd
- cri-o
- katacontainers
- gvisor

## OCI(Open Container Initiative)

## wasm runtime
- wamstime(字节码联盟)
- wamr(字节码联盟)
- wasmer(超级轻量容器,在任意环境运行)(https://wasmer.io/products/runtime)
- wasm3(解释器)
- wasmedge(边缘计算，云原生)

## wasm advantage
- High performance
- Fast,no cold start
- Safe,sandbox
- Portable
- Strandard
- many program lang

## python to wasm 
- pypy.js(过curl https://get.wasmer.io -sSfL | sh期)
- emscripten

## crontab
crontab -e  edit
corntab -e -u root
crontab -r -u root
* * * * * /usr/bin/bash copy-many-pod-file.sh

error 
pam_unix(cron:session): session closed for user root
fix:
    vim /etc/pam.d/common-session-noninteractive     
    session [success=1 default=ignore] pam_succeed_if.so service in cron quiet use_uid
    line""
    session required pam_unix.so 
    line""
## awk
awk '{print$0}'
awk '{print$1}'
awk -F : ....
awk 'NR>1{print$1}'

## wc
wc -l 

## time 
time command

## 


