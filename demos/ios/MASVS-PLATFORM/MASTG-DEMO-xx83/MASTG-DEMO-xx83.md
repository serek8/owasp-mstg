---
platform: ios
title: Deprecated Usage of UIWebView
code: [swift]
id: MASTG-DEMO-xx83
test: MASTG-TEST-0xx318
kind: fail
---

## Sample

The following sample demonstrates the use of [`UIWebView`](https://developer.apple.com/documentation/uikit/uiwebview).

{{ MastgTest.swift }}

## Steps

1. Unzip the app package and locate the main binary file (@MASTG-TECH-0058), which in this case is `./Payload/MASTestApp.app/MASTestApp`.
2. Open the app binary with @MASTG-TOOL-0073 with the `-i` option to run the script.

{{ run.sh }}

## Observation

The output contains the `OBJC_CLASS_$_UIWebView`, which indicates the presence of [`UIWebView`](https://developer.apple.com/documentation/uikit/uiwebview) in the app.

{{ output.txt }}

## Evaluation

The test fails because the app contains deprecated `UIWebView`.
