#!/bin/bash

#若仓库"/app/bash-simplify/"不处在relese分支，则退出
source <(curl --silent http://giteaz:3000/bal/bash-simplify/raw/tag/tag_release/repo_BashSimplify__In_tag_release.sh)
repo_BashSimplify__In_tag_release || exit $?
Hm="/app/bash-simplify/"

source $Hm/mvFLsByAbsTm.sh

#全路径文件 重命名： 加 当前绝对时间后缀
#用法举例: mvFile_AppendCurAbsTime /bal/xxx.txt
#则 文件/bal/xxx.txt 被重命名为 比如 /bal/xxx.txt-20231210132251_1702185771_452355256
function mvFile_AppendCurAbsTime_multi(){
mvFLsByAbsTm $*
}
