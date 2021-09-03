#!/bin/bash

set -eo pipefail

xcodebuild -workspace weather-app-ios-group-1.xcworkspace \
            -scheme weather-app-ios-group-1\ iOS \
            -destination platform=iOS\ Simulator,OS=13.3,name=iPhone\ 11 \
            clean test | xcpretty