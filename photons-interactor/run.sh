#!/usr/bin/with-contenv bashio

SILENT="$(bashio::config 'silent')"
if [[ $SILENT == "true" ]]; then
    export PHOTONS_SILENT_BY_DEFAULT=1
fi

CONFIG="$(bashio::config 'config')"
echo "$CONFIG" >config.json

lifx lan:interactor
