#!/usr/bin/env bash

#若仓库"/app/bash-simplify/"不处在relese分支，则退出
source <(curl http://giteaz:3000/bal/bash-simplify/raw/branch/release/repo_branch_eq_release.sh)
repo_branch_eq_release || exit $?
Hm="/app/bash-simplify/"

source $Hm/gitCko_tagBrc_assertCmtId.sh

#gitCko_tagBrc_asstCmtId: gitCheckout_tagOrBranch_assertCmtId
#调用举例 : gitCko_tagBrc_asstCmtId GitDir tagOrBranch CmtId
function gitCko_tagBrc_asstCmtId(){
gitCko_tagBrc_assertCmtId $*
}