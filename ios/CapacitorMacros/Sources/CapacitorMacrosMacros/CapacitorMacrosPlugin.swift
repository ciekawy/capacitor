import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

@main
struct CapacitorMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        CapacitorPluginMacro.self,
        CapacitorPluginMethodMacro.self
    ]
}
