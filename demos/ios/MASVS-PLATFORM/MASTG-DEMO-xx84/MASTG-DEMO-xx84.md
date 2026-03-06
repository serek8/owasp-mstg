---
platform: ios
title: Mixed HTTP and HTTPS content in WebView
code: [xml]
id: MASTG-DEMO-xx84
test: MASTG-TEST-0xx320
kind: fail
---

## Sample

The following sample demonstrates the use of [`NSAllowsArbitraryLoadsInWebContent`](https://developer.apple.com/documentation/BundleResources/Information-Property-List/NSAppTransportSecurity/NSAllowsArbitraryLoadsInWebContent) to load a website over HTTP.

{{ MastgTest.swift }}

## Steps

1. Extract the app (@MASTG-TECH-0058) and locate the `Info.plist` file inside the app bundle (which we'll name `Info_reversed.plist`).
2. Convert the Info.plist to pretty printed JSON (@MASTG-TECH-0138)
3. Extract the relevant keys and values from the `NSAppTransportSecurity` configuration. In this case we use `gron` to transform the JSON into a greppable format and `egrep` to search for specific regex patterns.
4. Check if app uses `hasOnlySecureContent` with @MASTG-TOOL-0073

{{ run.sh # find_hasOnlySecureContent.r2}}

## Observation

The output contains the `NSAllowsArbitraryLoadsInWebContent` and `NSAllowsArbitraryLoads`. If the keys weren't present, the app would be using the default ATS policy, which blocks HTTP traffic. In this case, however, to investigate the plist file further, open it in @MASTG-TOOL-0070.

{{ output.txt # Info_reversed.json }}

Note that `NSAllowsArbitraryLoadsInWebContent` is set to YES, which means that a WebView can load websites over insecure HTTP.

## Evaluation

The test fails because the app allows insecure HTTP traffic by setting `NSAllowsArbitraryLoadsInWebContent`. While the app cannot enforce mixed-content restrictions using `hasOnlySecureContent`, it could at least verify whether the loaded website used only secure content. However, according to `output.txt`, the app does not use `hasOnlySecureContent`.
