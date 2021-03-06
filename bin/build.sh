#!/bin/bash

COMMAND=${0}
BIN_FOLDER=`dirname "${COMMAND}"`
. "${BIN_FOLDER}/lib"

cd "${DOCKER_FOLDER}"

(
    cd base

    docker build --tag matthewfranglen/jmeter-base . || exit 1
)

(
    cd editor

    docker build --tag matthewfranglen/jmeter-editor . || exit 1
)

(
    cd client

    docker build --tag matthewfranglen/jmeter-client . || exit 1
)
