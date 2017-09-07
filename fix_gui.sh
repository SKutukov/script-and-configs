if [ -d "$3" ]
  then 
	echo "directory $3 already exist"
  else
	mkdir $3
fi
for file in $1/*
do 
  
  parts=$(echo $file | tr "/" "\n")

	for addr in $parts
	do
    	name=$addr
	done
  if [ -a "$3/$name" ]
  then 
	echo "$file already exist"
  else  
	echo "processing $file"
  	#ffmpeg -i $file -vf "transpose=$2" $3/$name	
	ffmpeg -i $file -c copy -metadata:s:v:0 rotate=90 $3/$name

  fi
done
