!/usr/bin/env bash
#---------------------------------------------------------------------------
# キーワードリストとテンプレートからMarkdownのアンカーを生成する。
# CreatedAt: 2019-09-07
#---------------------------------------------------------------------------
Run() {
	SCRIPT_DIR=$(cd $(dirname $0); pwd)
	cd "$SCRIPT_DIR"

	echo -e "key word1\nkey   word 2\n k e y w o r d 3 \nK EYwoRD4" > keywords.txt
	echo "" > result.md
	IFS=$'\n'
	for k in `cat keywords.txt`; do
		keyword="${k}" id="`echo ${k,,} | xargs | sed -e 's/ /_/g'`" mo template.md >> result.md
	done
}
Run


