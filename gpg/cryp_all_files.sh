for file in $1/*
do 
  
  parts=$(echo $file | tr "/" "\n")

	for addr in $parts
	do
   	name=$addr
done

#  if [ -a "$1/$name" ]
#  then 
#	echo "$file already exist"
#  else  
	echo "processing $file"	
	gpg -c $file &

#fi
done
