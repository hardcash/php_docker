#!/usr/bin/env bash
    bash ./.utils/message.sh info "Using composer container - this can be very slow..."
    bash ./.utils/message.sh info "Please consider installing composer locally: https://getcomposer.org/download/"
    docker-compose -H tcp://localhost:2375 run composer composer "$@"

