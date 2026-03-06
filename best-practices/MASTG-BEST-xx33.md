---
title: Migrate from UIWebView to WkWebKit
alias: migrate-from-UIWebView-WkWebKit
id: MASTG-BEST-xx33
platform: ios
knowledge: [MASTG-KNOW-0076]
---

Apple deprecated `UIWebView` in favor of `WKWebView` for better security and performance. Migrate your app to `WKWebView` to have more granular control over web content:

- Restrict access to the local filesystem (@MASTG-BEST-xx32).
- Limit JavaScript execution within web content using the [`allowsContentJavaScript`](https://developer.apple.com/documentation/webkit/wkwebpagepreferences/allowscontentjavascript) API.
- Verify if web content contains mixed HTTP and HTTPS resources using [`hasOnlySecureContent`](https://developer.apple.com/documentation/webkit/wkwebview/hasonlysecurecontent).
- Isolate web content in a separate process to ensure stability and protection against malicious actors.
