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

## Dataset: hansard-xml

``` sh
mkdir -p hansard-xml/2020/senate hansard-xml/2020/hofreps
cd hansard-xml/2020/senate
while read file; do
    wget ${file} -b
done < ../../../remotes/hansard-urls/2020-au-hansard-senate.csv

cd ../hofreps
while read file; do
    wget ${file} -b
done < ../../../remotes/hansard-urls/2020-au-hansard-hofreps.csv

```