// Pseudocode for sym.func.100004470
// Purpose: build a URL using a base constant + optional username from NSUserDefaults,
//          load it in a WKWebView, then present a view controller that hosts the web view.

void func_100004470(/* args omitted: includes a completion block / callback */) {
    // --- Allocate / prepare objects ---
    WKWebView *webView = [[WKWebView alloc] init];

    // Instantiate NSUserDefaults and fetch a value for key "username"
    NSUserDefaults *defaults = [[NSUserDefaults alloc] init];
    NSString *usernameObj = [defaults objectForKey:@"username"];   // selector at 0x1000045ac

    // Bridge optional NSString to Swift String semantics (Optional<String>)
    // If nil -> (nil, none) in Swift terms
    SwiftString username = (usernameObj != nil)
        ? SwiftString_fromNSString(usernameObj)
        : SwiftString_none();

    // --- Build URL string ---
    // Base is a static constant from __TEXT: "https://owasp.org/"
    SwiftString urlString = "https://owasp.org/";
    urlString.append(username);   // append(...ySSF) at 0x100004628

    // --- Construct URL and validate ---
    URL url = URL(string: urlString);          // Foundation.URL.string(...) at 0x100004640
    bool ok = url.isValidOrNonNil();           // generic accessor / boolean check around 0x100004650+

    if (!ok) {
        // Fallback branch: URL invalid / nil
        // (details depend on the Swift/ABI glue; function exits without loading)
        return;
    }

    // --- Build request and load in WKWebView ---
    // Equivalent to: URLRequest(url: url, cachePolicy: ..., timeoutInterval: 60.0)
    URLRequest req = URLRequest(
        url: url,
        cachePolicy: /* default/0 in the call */,
        timeoutInterval: 60.0
    );

    // Bridge to Objective-C NSURLRequest
    NSURLRequest *nsReq = req._bridgeToObjectiveC();

    // webView.loadRequest(nsReq)
    [webView loadRequest:nsReq];               // selector loadRequest: at 0x1000046d4

    // --- Present a view controller containing the web view ---
    UIViewController *vc = [[UIViewController alloc] init];
    [vc setView:webView];

    UIViewController *top = MastgTest.topViewController();
    if (top != nil) {
        // Present with completion block captured from function args
        [top presentViewController:vc animated:YES completion:/* captured callback */];
    } else {
        // Log / callback with failure message
        // "Failed to present web view (no active view controller)."
        completion("Failed to present web view (no active view controller).");
        // release objects, then return
    }

    // ARC / Swift runtime retains/releases occur throughout; omitted here for clarity.
}
