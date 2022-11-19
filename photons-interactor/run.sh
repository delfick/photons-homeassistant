#!/usr/bin/with-contenv bashio

CONFIG="$(bashio::config 'config')"
echo "$CONFIG" >config.json

lifx lan:interactor
