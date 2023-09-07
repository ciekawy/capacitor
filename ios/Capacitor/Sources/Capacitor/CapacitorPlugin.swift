import UIKit
import WebKit

// TODO: Add CAPPlugin Compatabilty Layer

class CapacitorPluginCall {
  // TODO: Temporary to get things to compile
}

struct CapacitorEvent {

}


public class CAPPlugin  {
    var webView: WKWebView?
    var bridge: CAPBridgeProtocol? // TODO: Change this to fit more useful protocol
    
    var eventListeners: [String: CapacitorPluginCall]?
    // TODO: retainedEventArguments may be needed for backwards compat, but closures should work


    let pluginId: String
    let pluginName: String

    var shouldStringifyDatesForCalls: Bool // TODO: Do we need this?

    func addListener(for named: String) {}

    func removeListener(named: String) {}

    func notifyListener(named: String, data: [String: Any]) {}



}
