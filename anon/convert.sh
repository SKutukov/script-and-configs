input=$1
output=$2

parts=$(echo $input | tr "/" "\n")

	for addr in $parts
	do
    	name=$addr
	done

if [ $name != "DICOMDIR" ]
then
	convert $input $output
fi