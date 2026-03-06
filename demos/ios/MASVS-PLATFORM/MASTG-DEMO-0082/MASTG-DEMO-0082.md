---
platform: ios
title: URI Manipulation in WebView
code: [swift]
id: MASTG-DEMO-0082
test: MASTG-TEST-0xx319
kind: fail
---

## Sample

The following sample demonstrates the use of [`load(_ request: URLRequest)`](https://developer.apple.com/documentation/webkit/wkwebview/load(_:)) to open a website in a WebView.

{{ MastgTest.swift }}

## Steps

1. Unzip the app package and locate the main binary file (@MASTG-TECH-0058), which in this case is `./Payload/MASTestApp.app/MASTestApp`.
2. Open the app binary with @MASTG-TOOL-0073 with the `-i` option to run this script.

{{ load_webview.r2 }}

{{ run.sh }}

## Observation

The output contains the disassembled code of the function using `load(_ request: URLRequest)`. This function is large and complex, so to simplify the analysis, we can use an LLM to assist with reverse engineering the application.

{{ output.txt # output_decompiled.c }}

1. On **lines 6–8**, the function retrieves the value of `"username"` from `NSUserDefaults`, which is a user-modifiable storage location and therefore an untrusted input source.
2. On **lines 12–14**, this user-controlled value is appended to the hardcoded base string `"https://owasp.org/"`, meaning the final URL string is dynamically constructed rather than fixed.
3. On **line 16**, the application creates a `URL` object directly from this concatenated string without validating the resulting host, path, or structure.
4. On **line 23**, the constructed request is passed to `WKWebView.loadRequest`, allowing a user who can alter `NSUserDefaults["username"]` to influence the URL that is ultimately loaded.

## Evaluation

The test fails because the user can manipulate website URL.
