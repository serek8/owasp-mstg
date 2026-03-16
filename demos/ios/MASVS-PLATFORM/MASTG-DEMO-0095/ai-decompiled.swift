import Foundation
import UIKit
import WebKit

extension MastgTest {
    @inline(never)
    static func showLoginWebView(
        completion: @escaping (String) -> Void
    ) {
        let webView = WKWebView()

        let delegate = WebViewDelegate()
        webView.navigationDelegate = delegate
        objc_setAssociatedObject(
            webView,
            "delegate",
            delegate,
            .OBJC_ASSOCIATION_RETAIN_NONATOMIC
        )

        let defaults = UserDefaults.standard
        let username = defaults.string(forKey: "username") ?? ""

        let urlString = "https://owasp.org/login?next=https://owasp.org/home&user=" + username

        guard let url = URL(string: urlString) else {
            // There is a helper call here in the assembly before continuing.
            // It may log, assert, or otherwise handle an invalid URL.
            handleInvalidURL(urlString)
            return
        }

        let request = URLRequest(
            url: url,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 60.0
        )

        webView.load(request)

        let viewControllerToPresent = UIViewController()
        viewControllerToPresent.view = webView

        if let presenter = topViewController() {
            presenter.present(viewControllerToPresent, animated: true, completion: nil)
        } else {
            completion("Failed to present web view (no active view controller).")
        }
    }

    private static func handleInvalidURL(_ string: String) {
        // Unknown helper at 0x100005b30.
    }

    private static func topViewController() -> UIViewController? {
        // Inferred from the helper calls near the end of the function.
        let scenes = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
        let keyWindow = scenes
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
        let root = keyWindow?.rootViewController
        return topViewController(base: root)
    }

    private static func topViewController(base: UIViewController?) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            return topViewController(base: tab.selectedViewController)
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
}

private final class WebViewDelegate: NSObject, WKNavigationDelegate {
}