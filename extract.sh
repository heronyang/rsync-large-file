#!/bin/bash
# this code will be run on the destination machine
cat ./data.tar.gz.* > data.tar.gz
tar -xvzf data.tar.gz
