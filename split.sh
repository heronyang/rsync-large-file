#/bin/bash
tar -zcvf data.zip productRecords.json
split -b 40m -a 3 data.zip data.zip.
