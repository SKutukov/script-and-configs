#echo "write directory >>>"

function directory_search 
 {
 dir=$1
 output_dir=$2
 for file in `find $dir`
  do
  if [ -d "$file" ]
    then
	mkdir -v $output_dir/$file 
    else
  	echo "processing $file"
  	./encryp.sh $file $output_dir/$file 
  fi

  done
 }

dir=$1
output_dir=$2

mkdir -v $output_dir
directory_search $dir $output_dir
