---
platform: ios
title: Attacker-Controlled URI in WebViews
id: MASTG-TEST-0332
type: [static]
weakness: MASWE-0071
best-practices: [MASTG-BEST-0034]
---

## Overview

iOS apps can load URLs dynamically into a [`WKWebView`](https://developer.apple.com/documentation/webkit/wkwebview) using [`load(_:)`](https://developer.apple.com/documentation/webkit/wkwebview/1414954-load) with a `URLRequest` containing a remote URL.

This test checks whether the app passes attacker-controlled input to `WKWebView.load(_:)` without adequate URL validation. If a URL originates from attacker-controlled input, for example through a deep link, custom URL scheme, or user-supplied data from the UI, and is passed directly to `load(_:)`, the `WKWebView` may be redirected to malicious content.

## Steps

1. Extract the app as described in @MASTG-TECH-0058.
2. Run a static analysis tool such as @MASTG-TOOL-0073 on the app binary, looking for calls to any `WKWebView` URL load APIs.

## Observation

The output should contain a list of locations in the binary where `WKWebView` URL load APIs are called.

## Evaluation

The test fails if any call to `WKWebView` URL load APIs is found where the URL is derived from attacker-controlled input without proper validation.

Inspect each reported code location using @MASTG-TECH-0076.

- Trace where the [`URLRequest`](https://developer.apple.com/documentation/foundation/urlrequest) URL originates.
- Determine whether it is derived from attacker-controlled input, for example a custom URL scheme parameter, a deep link component, or unsanitized user input from the UI.
- Verify that the URL is adequately validated before being passed to `WKWebView` URL load APIs.

The test passes if all URLs loaded into the `WKWebView` are either hardcoded or properly validated before being passed to any `WKWebView` URL load API.
