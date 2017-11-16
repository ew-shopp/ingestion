#!/bin/bash

basedir=/home/volker/TmpEW/transform
indir=${basedir}/in
outdir=${basedir}/out
workdir=${basedir}/work

DOCKER_SERVICE="docker service create \
    --replicas 1 \
    --user `id --user`:`id --group` \
    --detach \
    --limit-cpu 1 \
    --mount type=bind,source=${indir},destination=/in \
    --mount type=bind,source=${workdir},destination=/work \
    --mount type=bind,source=${outdir},destination=/out"

${DOCKER_SERVICE} transform /in /work /out
