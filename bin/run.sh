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
        matthewfranglen/jmeter-client -n -t /plans/plan.jmx -l /reports/results.jtl -j /reports/jmeter.log
)
