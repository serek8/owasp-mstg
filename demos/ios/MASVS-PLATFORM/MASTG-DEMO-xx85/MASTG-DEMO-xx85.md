---
platform: ios
title: WebView URI Manipulation Leading to Local File Access
code: [swift]
id: MASTG-DEMO-xx85
test: MASTG-TEST-0xx319
kind: fail
---

## Sample

The following sample demonstrates a scenario similar to CVE-2025-12699, where an attacker manipulates a URI loaded by a WebView to access a file stored in the application's local storage containing sensitive user data. In this scenario, the application fails to properly validate user-controlled input and passes it directly to the WebView. As a result, the WebView loads the attacker-supplied URI without restrictions, potentially allowing unauthorized access to local files.

{{ MastgTest.swift }}

## Steps

1. Unzip the app package and locate the main binary file (@MASTG-TECH-0058), which in this case is `./Payload/MASTestApp.app/MASTestApp`.
2. Open the app binary with @MASTG-TOOL-0073 with the `-i` option to run the scripts:
  2.1 Ensure the app doesn't use [`load(_ request: URLRequest)`](https://developer.apple.com/documentation/webkit/wkwebview/load(_:)) to load web sites from local files.
  2.2. Ensure the app doesn't use too broad container path for `readAccessURL` in [`loadFileURL( _ URL: URL, allowingReadAccessTo readAccessURL: URL )`](https://developer.apple.com/documentation/webkit/wkwebview/loadfileurl(_:allowingreadaccessto:)) API.

{{ load_webview.r2 }} | {{ load_webview_allow_access.r2 }}

{{ run.sh }}

## Observation

The output indicates that there is no use of insecure `load(_ request: URLRequest)`, that doesn't restrict file access. Next, it shows the disassembled code of the function using `loadFileURL( _ URL: URL, allowingReadAccessTo readAccessURL: URL )`. This function is large and complex, so to simplify the analysis, we can use an LLM to assist with reverse engineering the application.

{{ output.txt # output_from_ai.txt }}

1. On **lines 13**, the app invokes the `webView.loadFileURL(fileURL, allowingReadAccessTo: docDir)`.
2. To ensure docDir isn't too broad, we track `docDir` variable.
3. On **line 9-11**, the app assigns `docDir` variable with the path to the `Documents` directory.

### Evaluation

The test fails because an attacker can manipulate use a malicious payload to manipulate URI and access files in the `Documents` directory. Inside this directory, the app usually stores user's data. Therefore the `allowingReadAccessTo` argument should be set to a directory that doesn't contain user's data.
