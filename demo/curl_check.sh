#!/bin/bash
# author wangyingbo
# date:2021-06-26 下午 14:30



if [ "$(curl -sL -w '%{http_code}' https://ybproxypool.herokuapp.com/ -o /dev/null)" = "200" ]; then
    echo "ybproxypool success~~~"
else
    echo "ybproxypool Fail!!!"
fi



if curl -sL --fail https://ybproxy.herokuapp.com/ -o /dev/null; then
    echo "ybproxy success~~~"
else
    echo "ybproxy Fail!!!"
fi