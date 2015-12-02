#!/bin/bash

COMMAND=${0}
BIN_FOLDER=`dirname "${COMMAND}"`
. "${BIN_FOLDER}/lib"

(
    cd "${ROOT_FOLDER}"/docker/editor

    docker build --tag jmeter/editor .
    docker run                                 \
        --interactive                          \
        --tty                                  \
        --volume /tmp/.X11-unix:/tmp/.X11-unix \
        --env DISPLAY=unix$DISPLAY             \
        --name jmeter-editor                   \
        --rm                                   \
        jmeter/editor
)
