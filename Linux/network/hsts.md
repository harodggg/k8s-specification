# HSTS (http strict transport security)

## 1. 目的 
阻止用户遭受SSL striping玻璃的中间人攻击. SSL stripping可以强迫用户访问http。其次，可以保护免受cookies劫持。

## 2. 原理
当用户输入域名的时候，往往不指定协议，通常默认使用http。hsts强迫使用https。
        
## 3. HSTS 是否永久安全
 不是，第一次请求是http。指定时间到期后，会重新刷新