#!/bin/sh
TEMPDIR=`mktemp -d`
CFGFILE=umbrella-api.conf.sample
tools/config/generate_sample.sh -b ./ -p umbrella -o $TEMPDIR
if ! diff $TEMPDIR/$CFGFILE etc/$CFGFILE
then
    echo "E: umbrella.config.sample is not up to date, please run tools/config/generate_sample.sh"
    exit 42
fi
