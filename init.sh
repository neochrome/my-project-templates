#!/usr/bin/env bash
root=$(dirname $(realpath ${BASH_SOURCE[0]}))
templates=$(find $root/* -maxdepth 0 -type d \! -name .git -exec basename {} \;)

tpl=$1
if [[ -z $1 ]]; then
	echo -e "specify one of the following templates:\n"
	for t in $templates; do echo "  $t"; done
	exit
fi

if [[ ! -d $root/$tpl ]]; then
	echo "invalid template: $tpl"
	echo -e "must be one of:\n"
	for t in $templates; do echo "  $t"; done
	exit 1
fi

echo "initializing a $tpl project..."
(cd $root/$tpl;	git archive --format=tar HEAD) | tar xf -
