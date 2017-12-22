# Very simple chrome shortcut system for MacOS
# Tested on MacOS Sierra 10.12.5 

#!/bin/bash
## Required fields
echo URL: 
read url
echo Short: 
read short
## Optional fields
short_dir='/Users/fisher/Downloads/shorts'
dirs=$(cd $short_dir; ls -d ./*/)
echo 'Dirs? ('${dirs}'):'
read dir
#if [[ -z ${dir} ]]
#then
	#short_file=${short_dir}/${short}
#else
short_file=${short_dir}/${dir}/${short}
#fi
echo '#!/bin/bash' > ${short_file}
echo '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome' \'$url\' >> ${short_file}
chmod u+x ${short_file}
