# Hail Experiments


### Docker

```
docker build -t hail
```

```
docker run --rm -it -p 8898:8888 \
-v /data/disk1/dev/gwas:/work/data \
-v /home/eczech/repos/misc/hail-experiments:/work/repos/hail-experiments \
hail
```

```
# Copy entire 1KG dataset (18G)
cd $GWAS_DATA_DIR
mkdir 1000_genomes.phase3.GRCh38.mt
gsutil du gs://hail-datasets/1000_genomes.phase3.GRCh38.mt
> 18263977815  gs://hail-datasets/1000_genomes.phase3.GRCh38.mt/
gsutil rsync -r gs://hail-datasets/1000_genomes.phase3.GRCh38.mt 1000_genomes.phase3.GRCh38.mt/
```

### Datasets

Primary hail dataset bucket: https://console.cloud.google.com/storage/browser/hail-datasets
Secondary bucket sourced for `hl.experimental.load_dataset`: https://console.cloud.google.com/storage/browser/hail-datasets-hail-data
