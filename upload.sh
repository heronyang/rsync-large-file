#!/bin/bash
FILES=./data.zip.*
for f in $FILES
do
    echo "Uploading $f file..."
    # rsync --progress -rave "ssh -i ~/17-648/doc/1/cmu-17648-linux.pem" $f ec2-user@ec2-54-196-236-65.compute-1.amazonaws.com:~/data/ > ./log/$f.log &
    rsync --progress -rave "ssh -i MY_MACHINE_KEY.pem" $f ec2-user@MY_MACHINE_URL:~/data/ > ./log/$f.log &
done
