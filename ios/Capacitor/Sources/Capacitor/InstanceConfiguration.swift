import Foundation
import UIKit

public struct InstanceConfiguration {
    let appendedUserAgentString: String?
    let overridenUserAgentString: String?
    let backgroundColor: UIColor?
    let allowedNavigationHostnames: [String]
    let localURL: URL
    let serverURL: URL
    let errorPath: String?
    let pluginConfigurations: [String: Any] //TODO: figure out, or constrain what this is allowed to be - I hope its not really any/any
    let isLoggingEnabled: Bool
    let isScrollingEnabled: Bool
    let shouldAllowLinkPreviews: Bool
    let canHandleApplicationNotifications: Bool
    let isWebDebuggable: Bool
    let isCordovaDeployDisabled: Bool
    let limitNavigationsToAppBoundDomains: Bool
    let contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior
    let appLocation: URL
    let appStartPath: String
    let preferredContentMode: String // Should be enum

//    init(with: InstanceDescriptor) {
//
//    }
//
//    init(with: InstanceConfiguration, location: URL) {
//
//    }
}
