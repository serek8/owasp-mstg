---
platform: ios
title: References to Screen Capturing API
code: [swift]
id: MASTG-DEMO-0020
test: MASTG-TEST-0240
---

### Sample

{{ MastgTest.swift }}

### Steps

1. Unzip the app package and locate the main binary file (@MASTG-TECH-0058), which in this case is `./Payload/MASTestApp.app/MASTestApp`.
2. Open the app binary with @MASTG-TOOL-0073 with the `-i` option to run this script.

{{ screen-capture.r2 }}

{{ run.sh }}

### Observation

The output contains all uses of [sceneCaptureState](https://developer.apple.com/documentation/uikit/uitraitcollection/scenecapturestate) and [isCaptured](https://developer.apple.com/documentation/uikit/uiscreen/iscaptured) functions in the binary.

{{ output.txt }}

### Evaluation

The test succeeds because the app contains API that detects screen capturing. It's difficult to say whether the app actually uses this API but its presence indicates that the developer is aware of this API.