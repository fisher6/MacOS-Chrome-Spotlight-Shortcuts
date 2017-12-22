#!/bin/bash

short_dir='/Users/fisher/Downloads/shorts'

## Required fields
echo URL: 
read url
echo Short: 
read short
## Optional fields
dirs=$(cd $short_dir; ls -d ./*/)
echo 'Dirs? ('${dirs}'):'
read dir

short_file=${short_dir}/${dir}/${short}
echo '#!/bin/bash' > ${short_file}
echo '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome' \'$url\' >> ${short_file}
chmod u+x ${short_file}
