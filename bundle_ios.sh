#!/bin/sh
react-native bundle --entry-file index.js --bundle-output ./ios/bundle/index.jsbundle --platform ios --assets-dest ./ios/bundle --dev false
