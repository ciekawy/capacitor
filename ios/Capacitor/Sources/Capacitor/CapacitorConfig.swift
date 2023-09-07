import Foundation

enum CapacitorLoggingBehavior: String {
    case none
    case debug
    case production
}

struct CapacitorConfig: Codable {
    let appId: String?
    let appName: String?
    let webDir: String?
    let bundledWebRuntime: Bool?
    //let loggingBehavior: CapacitorLoggingBehavior?
    let loggingBehavior: String?
    let overrideUserAgent: String?
    let appendUserAgent: String?
    let backgroundColor: String?

}

struct CapacitorAndroidConfig: Codable {
    let path: String?
    let overrideUserAgent: String?
    let appendUserAgent: String?
    let backgroundColor: String?
    let allowMixedContent: Bool?
    let captureInput: Bool?
    let webContentsDebuggingEnabled: Bool?
    let loggingBehavior: String?
    let includePlugins: [String]?
    let flavor: String?
    let initalFocus: Bool?
    let minWebViewVersion: Int?
    let minHuaweiWebViewVersion: Int?

}

struct CapacitorAndroidBuildOptions: Codable {

}

struct CapacitorIosConfig: Codable {

}

struct CapacitorServerConfig: Codable {

}

struct CapacitorCordovaConfig: Codable {

}


