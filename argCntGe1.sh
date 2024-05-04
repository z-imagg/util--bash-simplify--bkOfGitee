#!/bin/bash

#【描述】  参数个数是否大于等于1个
#【依赖】   
#【术语】 
#【备注】  

# 参数个数是否大于等于1个
function argCntGe1() {

alsDisDbgIfStackDepthGtN

    # echo "\$*=[$*],\$#=[$#]"

    #若函数参数 不 大于等于1个 ， 则返回错误（退出码为23）
    # 即 若函数参数 小于1个 ， 则返回错误（退出码为23）
    [ $# -ge 1 ] || return 23

alsEnIfDisDbg

    #否则 返回正常（退出码为0）
    return 0

}

# #用法举例:
#  若函数参数 不 大于等于1个 ， 则返回错误
#     即 若函数参数 小于1个 ， 则返回错误
# _importBSFn "argCntGe1.sh"
# argCntGe1 $* || return $?