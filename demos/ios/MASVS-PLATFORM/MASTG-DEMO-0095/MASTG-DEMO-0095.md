---
platform: ios
title: URI Manipulation in WebView
code: [swift]
id: MASTG-DEMO-0095
test: MASTG-TEST-0332
kind: fail
---

## Sample

This sample demonstrates a URI manipulation attack against the WebKit component. While we use [`loadFileURL(_ request: URLRequest)`](https://developer.apple.com/documentation/webkit/wkwebview/loadfilerequest(_:allowingreadaccessto:)) here, this vulnerability applies to all `WebKit.load*()` methods.

{{ MastgTest.swift }}

To exploit the demo app via URI manipulation, set the username to the URL-encoded html code `%3Cmeta%20http-equiv=%22refresh%22%20content=%221;%20url=https://mas.owasp.org%22%3E`. This works because the app blindly renders the username GET argument, allowing an injected HTML `<meta>` tag to hijack the view and redirect it to a new destination.

## Steps

1. Unzip the app package and locate the main binary file (@MASTG-TECH-0058), which in this case is `./Payload/MASTestApp.app/MASTestApp`.
2. Open the app binary with @MASTG-TOOL-0073 with the `-i` option to run this script.

{{ load_webview.r2 }}

{{ run.sh }}

## Observation

The output contains the disassembled code of the function using `loadFileURL(_ request: URLRequest)`. This function is large and complex, so to simplify the analysis, we can use an LLM to assist with reverse engineering the application.

{{ output.txt # function.asm # ai-decompiled.swift }}

1. On **lines 6–8**, the function construct an URL from a user-modifiable `username` argument.
2. On **lines 8**, this user-controlled value is appended to the hardcoded base string meaning the final URL string is dynamically constructed rather than fixed.
3. On **line 11**, the application creates a `URL` object directly from this concatenated string without validating the resulting host, path, or structure.
4. On **line 21**, the constructed request is passed to `WKWebView.loadFileURL`, allowing a user who can alter `username` to influence the URL that is ultimately loaded.

## Evaluation

The test fails because the user can manipulate website URL.
