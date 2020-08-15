# Datasets

To add a dataset add a subsection to this file called `Dataset: <dataset name>` and include a code block with the commands to download the dataset to the folder `<dataset name>`. Then use the helper script to download a dataset at the command line:
``` sh
./get-dataset.sh <dataset name> | sh
```

## Dataset: pm-transcripts

``` sh
git clone https://github.com/wragge/pm-transcripts pm-transcripts
cd pm-transcripts
git checkout -b thaum-data-main 97683f1
```

