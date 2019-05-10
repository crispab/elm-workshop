#!/usr/bin/env bash

# Build the application with time-travel debugger

elm make src/Main.elm --output=elm.js --debug
