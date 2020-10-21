#!/bin/bash
read -p  'what is your name?' name
case "`echo $name | tr 'a-z' 'A-Z'`" in
RONALD)
	echo "I love u"
	;;
*)
	echo "hello $name"
esac
