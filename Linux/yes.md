# linux command yes
1. yes y | rm -rf * 

# bash  - --
bash -s - 参数1 参数2 istioctl kube-inject -f kiali.yaml | kubectl apply -f - 从管道拿取
bash -s -- 参数1 参数2
后面的参数不解析