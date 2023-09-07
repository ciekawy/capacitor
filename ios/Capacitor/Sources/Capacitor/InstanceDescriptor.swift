import UIKit

enum InstanceType {
    case fixed
    case variable
}

struct InstanceWarning: OptionSet {
    let rawValue: Int

    static let missingAppDir = InstanceWarning(rawValue: 1 << 0)
    static let missingFile = InstanceWarning(rawValue: 1 << 1)
    static let invalidFile = InstanceWarning(rawValue: 1 << 2)
    static let missingCordovaFile = InstanceWarning(rawValue: 1 << 3)
    static let invalidCordovaFile = InstanceWarning(rawValue: 1 << 4)
}

struct InstanceLoggingBehavior: OptionSet {
    let rawValue: Int

    static let none = InstanceLoggingBehavior(rawValue: 1 << 0)
    static let debug = InstanceLoggingBehavior(rawValue: 1 << 1)
    static let production = InstanceLoggingBehavior(rawValue: 1 << 2)
}

struct InstanceDescriptor {
    
}
