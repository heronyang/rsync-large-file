#!/bin/bash
FILES=./data.tar.gz.*
for f in $FILES
do
    echo "Uploading $f file..."
    # rsync --progress -rave "ssh -i ~/keys/my-linux.pem" $f ec2-user@ec2-xxx-xxx-xxx-xxx.compute-1.amazonaws.com:~/data/ > ./log/$f.log &
    rsync --progress -rave "ssh -i MY_MACHINE_KEY.pem" $f ec2-user@MY_MACHINE_URL:DIR_PATH_OF_DST_MACHINE > ./log/$f.log &
done
# view status
cat ./log/*.log
