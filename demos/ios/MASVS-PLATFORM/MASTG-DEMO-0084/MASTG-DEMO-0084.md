---
platform: ios
title: Mixed HTTP and HTTPS content in WebView
code: [swift]
id: MASTG-DEMO-0084
test: MASTG-TEST-0xx320
---

### Sample

The following sample demonstrates the use of [`NSAllowsArbitraryLoadsInWebContent`](https://developer.apple.com/documentation/BundleResources/Information-Property-List/NSAppTransportSecurity/NSAllowsArbitraryLoadsInWebContent) to load a website over HTTP.

{{ MastgTest.swift }}

### Steps

1. Unzip the app package and locate the main binary file (@MASTG-TECH-0058), which in this case is `./Payload/MASTestApp.app/MASTestApp`.
2. Scan the app binary with `grep`.

{{ run.sh }}

### Observation

{{ output.txt }}

The output contains the `NSAllowsArbitraryLoadsInWebContent` and `NSAllowsArbitraryLoads`. If the keys weren't present, the app would be using the default ATS policy, which blocks HTTP traffic. In this case, however, to investigate the plist file further, open it in @MASTG-TOOL-0070.

{{ exported-reversed-Info.plist }}

After exporting the plist file with XCODE, note that `NSAllowsArbitraryLoadsInWebContent` is set to YES, which means that a WebView can load websites over insecure HTTP.

```text
"NSAppTransportSecurity" = {
    "NSAllowsArbitraryLoads" = NO;
    "NSAllowsArbitraryLoadsInWebContent" = YES;
};
```

### Evaluation

The test fails because the app allows insecure HTTP traffic by setting `NSAllowsArbitraryLoadsInWebContent`. While the app cannot enforce mixed-content restrictions using `hasOnlySecureContent`, it could at least verify whether the loaded website used only secure content. However, according to `output.txt`, the app does not use `hasOnlySecureContent`.
