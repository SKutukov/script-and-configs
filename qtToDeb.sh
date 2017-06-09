cp * yourProjectName_projectVersion 
cd yourProjectName_projectVersion
dh_make -s -c gpl -e skutukov96@gmail.com -p remap_0.1 --createorig
dpkg-buildpackage -uc -us
