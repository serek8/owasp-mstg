---
platform: ios
title: Mixed HTTP and HTTPS content in WebView 
id: MASTG-TEST-0xx320
type: [static]
weakness: MASWE-0071
knowledge: [MASTG-KNOW-0071]
best-practices: [MASTG-BEST-xx34]
---

## Overview

[`WKWebView`](https://developer.apple.com/documentation/webkit/wkwebview) allows loading both HTTP and HTTPS content, including mixed content. However, to maximize security, an application should completely disable insecure HTTP by configuring its App Transport Security (ATS) policy accordingly. Alternatively, the application can detect whether a page was loaded over HTTP by checking the [`hasOnlySecureContent`](https://developer.apple.com/documentation/webkit/wkwebview/hasonlysecurecontent) flag.

In this test, we examine the App Transport Security policy for references to [`NSAllowsArbitraryLoadsInWebContent`](https://developer.apple.com/documentation/bundleresources/information-property-list/nsapptransportsecurity/nsallowsarbitraryloadsinwebcontent) and [`NSAllowsArbitraryLoads`](https://developer.apple.com/documentation/bundleresources/information-property-list/nsapptransportsecurity/nsallowsarbitraryloads), and verify that both are set to `false`.

Additionally, we check whether the application uses [`hasOnlySecureContent`](https://developer.apple.com/documentation/webkit/wkwebview/hasonlysecurecontent) to ensure that no insecure HTTP content is loaded.

## Steps

1. Run a static analysis tool such as @MASTG-TOOL-0073 (radare2) or @MASTG-TOOL-0129 (rabin2) to search for:
    - Usage of the `NSAllowsArbitraryLoadsInWebContent` and `NSAllowsArbitraryLoads` policies
    - Usage of the `hasOnlySecureContent` field

## Observation

The output could contain the values of App Transport Security policy and the presence of `hasOnlySecureContent` API.

## Evaluation

The test case fails if the app sets either `NSAllowsArbitraryLoadsInWebContent` or `NSAllowsArbitraryLoads` to `true`, or if it does not check the `hasOnlySecureContent` field.
