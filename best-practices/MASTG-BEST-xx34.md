---
title: Load Web Content Over Secure Connections
alias: load-web-content-over-secure-connections
id: MASTG-BEST-xx34
platform: ios
knowledge: [MASTG-KNOW-0071, MASTG-KNOW-0076]
---

Loading web content that mixes HTTP and HTTPS can lead to privacy leaks, injections, and MITM attacks. While [`WKWebView`](https://developer.apple.com/documentation/webkit/wkwebview) provides [`hasOnlySecureContent`](https://developer.apple.com/documentation/webkit/wkwebview/hasonlysecurecontent) to verify if a page is secure, it is better to prevent insecure loads entirely. It is recommended to disable insecure HTTP by configuring **App Transport Security (ATS)** policies. This prevents loading insecure content instead of detecting it after the fact. Refer to @MASTG-KNOW-0071 to read more about configuring ATS for your app.
