#echo "write directory >>>"

function directory_search 
 {
 dir=$1
 output_dir=$2

 i=0
 for file in $dir/*
  do
echo $file
	if [ -d "$file" ]
	then
	if [ "$file" != "./" ]
  
		then
	
		i=$(($i+1))
		#echo $output_dir/$i
		echo $file
		mkdir -v $output_dir/$i
		mv "$file"/* $output_dir/$i/
	fi
	fi
  
  done
 }

dir=$1
output_dir=$2
#mkdir -v  $output_dir
directory_search $dir $output_dir
