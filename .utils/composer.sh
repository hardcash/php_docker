#!/usr/bin/env bash
    bash ./.utils/message.sh info "Using composer container - this can be very slow..."
    bash ./.utils/message.sh info "Please consider installing composer locally: https://getcomposer.org/download/"
    docker -H tcp://localhost:2375 run --rm --interactive --tty \
        --volume $PWD/web_root:/app/bedrock \
        composer /bin/bash -c "composer $@"


