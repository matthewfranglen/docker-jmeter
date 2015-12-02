#!/bin/bash

COMMAND=`readlink -f ${0}`
BIN_FOLDER=`dirname "${COMMAND}"`
. "${BIN_FOLDER}/lib"

(
    docker run                                 \
        --interactive                          \
        --tty                                  \
        --rm                                   \
        --env DISPLAY=unix$DISPLAY             \
        --volume /tmp/.X11-unix:/tmp/.X11-unix \
        --volume "${PLANS_FOLDER}:/plans"      \
        --name jmeter-editor                   \
        matthewfranglen/jmeter-editor
)
