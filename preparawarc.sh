#!/bin/bash
#tobedone: controllare che esista il parametro directory
u=`uuid`
r='http://'$u'.memoria.bncf/'
echo "<!doctype html>" >>$u"index.html"
echo "<html lang=it>" >>$u"index.html"
echo "<head>" >>$u"index.html"
echo "<meta charset=utf-8>" >>$u"index.html"
echo "<style type='text/css'>" >>$u"index.html"
echo "body {" >>$u"index.html"
echo "  padding-left: 11em;" >>$u"index.html"
echo "  font-family: Georgia,Times, serif; Times New Roman;" >>$u"index.html" 
echo "  font-size: large" >>$u"index.html"
echo "    }" >>$u"index.html"
echo "</style>" >>$u"index.html"

echo "<title>"$1"</title>" >>$u"index.html"
echo "</head>" >>$u"index.html"
echo "<body>" >>$u"index.html"
echo "<ol>" >>$u"index.html"
for f in $1/*.*;
do
        path=$f
        file=${path##*/}
        echo "<li><a href='$file'>$file</a><br> $r$file </li><br>" >>$u"index.html"
	md5=($(md5sum $f))

        echo $md5 $'\t'$file $'\t' $r$file >> $u"index.txt"
        # take action on each file. $f store current file name
done
echo "</ol>" >>$u"index.html"
echo "</body>" >>$u"index.html"
echo "</html>" >>$u"index.html"
mv $u"index.html" ./$1/
mv $u"index.txt" ./$1/
#echo $r
warcit $r $1
