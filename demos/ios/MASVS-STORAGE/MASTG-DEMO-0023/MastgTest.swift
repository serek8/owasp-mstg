import SwiftUI

struct MastgTest {
  
  static func mastgTest(completion: @escaping (String) -> Void) {
    
    let token = "TOKEN=123"
    
    print("Leaking \(token) from print")
    NSLog("Leaking \(token) from NSLog")
    // Commented out for dynamic analysis because these APIs would crash
    //    assertionFailure("Leaking \(token) from assertionFailure")
    //    preconditionFailure("Leaking \(token) from preconditionFailure")
    //    assert(false, "Leaking \(token) from assert")
    completion("Successfully logged a token: \(token)")
  }
}