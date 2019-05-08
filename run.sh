#!/usr/bin/env bash

# Start a hot reload session at http://localhost:8000

elm-live src/Main.elm --pushstate -- --output=elm.js --debug
