# rsync-large-file
Scripts that help you upload a large file onto a remote machine (ex. Amazon EC2) in a faster way.

## Setup

- Put your .pem and remote machine public address in ```update.sh``` (example is provided in the code)
- Assign your large file filename in split.sh

## Run

Compress and split the file:
```
> ./split.sh
```

Upload:
```
> ./upload.sh
```

## Result

In my case, the upload time decreased from 5 hours to 1 hour of a 1.45G file.
