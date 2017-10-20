input=$1
output=$2
mv $input $input.gpg 
if [ -a $output ]
	then 
	 echo "already crypted" 
	else
	  gpg -o $input --decrypt $input.gpg
fi

#echo $input.gpg ./$output
mv $input $output