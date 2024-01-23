#!/bin/sh
react-native bundle --entry-file index.js --bundle-output ./android/bundle/index.jsbundle --platform android --assets-dest ./android/bundle --dev false
