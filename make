#!/bin/bash

clear
short_dir='/Users/fisher/Downloads/shorts'
## Printing previous shorts
ls $short_dir | while read file; do
  dir=$short_dir/$file
  if [[ -d $dir && $file != '_temp_disabled' ]]; then
    echo -e '\033[0;34m'$file/ '\033[0;31m'`ls $dir`
  fi
done
echo -en '\033[0m'
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
## Create the folder if it doesn't exist and write the short file
if [[ ! -d $short_dir/$dir ]]; then
  mkdir $short_dir/$dir
fi
short_file=${short_dir}/${dir}/${short}
echo '#!/bin/bash' > ${short_file}
echo '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome' \'$url\' >> ${short_file}
chmod u+x ${short_file}
