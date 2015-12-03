#!/bin/bash

COMMAND=`readlink -f ${0}`
BIN_FOLDER=`dirname "${COMMAND}"`
. "${BIN_FOLDER}/lib"

(
    docker run                                \
        --rm                                  \
        --volume "${PLANS_FOLDER}:/plans"     \
        --volume "${REPORTS_FOLDER}:/reports" \
        --name jmeter-standalone-client       \
        --net host                            \
        matthewfranglen/jmeter-client -n -l /reports/results.jtl -j /reports/jmeter.log -t /plans/${1:-plan.jmx}
)
