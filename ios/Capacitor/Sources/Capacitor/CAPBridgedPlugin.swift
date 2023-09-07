//
//  CAPBridgedPlugin+getMethod.swift
//  Capacitor
//
//  Created by Steven Sherry on 3/1/23.
//  Copyright © 2023 Drifty Co. All rights reserved.
//

// TODO: Temporary only
class CAPPluginMethod {
    let name = "Name"
}

protocol CAPBridgedPlugin {
    var identifier: String { get }
    var jsName: String { get }
    var pluginMethods: [CAPPluginMethod] { get }
}

extension CAPBridgedPlugin {
    func getMethod(named name: String) -> CAPPluginMethod? {
        pluginMethods.first { $0.name == name }
    }
}
