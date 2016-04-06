myPath=$1
popclipzFile="$myPath.popclipextz"
popclipFile="$myPath.popclipext"
echo  "do package.....  source path=$myPath popclipzFile=$popclipzFile"

if [ ! -f "$popclipzFile" ]; then
	rm -rf ../$popclipzFile
fi

if [ ! -f "$popclipFile" ]; then
	rm -rf $popclipFile
fi

if [ ! -d "$myPath" ]; then 
	exit 1;
fi

cp -rf $myPath $popclipFile
zip ../extension/"$popclipzFile"  $popclipFile
