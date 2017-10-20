input=$1
output=$2
if [ -a $input.gpg ]
	then 
	 echo "already crypted" 
	else
	 gpg -e -r sergey $input
fi

echo $input.gpg ./$output
mv $input.gpg $output


