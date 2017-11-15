#!/bin/bash

basedir=/home/volker/TmpEW/transform
indir=${basedir}/in
outdir=${basedir}/out
workdir=${basedir}/work

DOCKER_SERVICE="docker service create \
    --replicas 1 \
    --user `id --user`:`id --group` \
    --detach true \
    --limit-cpu 1 \
    --mount type=volume,source=${indir},destination=/in \
    --mount type=volume,source=${workdir},destination=/work \
    --mount type=volume,source=${outdir},destination=/out"

${DOCKER_SERVICE} transform /in /work /out
