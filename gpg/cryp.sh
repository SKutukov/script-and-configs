input=$1
output=$2
gpg -c $input
echo $input.gpg ./$output/
mv $input.gpg ./$output/


