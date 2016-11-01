#/bin/bash
tar -zcvf data.tar.gz original_data.json # change filename to your original large file (any type)
split -b 40m -a 3 data.tar.gz data.tar.gz.
