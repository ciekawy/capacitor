import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public struct CapacitorPluginMacro: ExtensionMacro {
    public static func expansion(of node: AttributeSyntax,
                                 attachedTo declaration: some DeclGroupSyntax,
                                 providingExtensionsOf type: some TypeSyntaxProtocol,
                                 conformingTo protocols: [TypeSyntax],
                                 in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        guard let classDecl = declaration.as(ClassDeclSyntax.self) else {
            let classDiag = Diagnostic(node: node, message: CapacitorMacroDiagnostics.notAClass)
            context.diagnose(classDiag)
            return []
        }

        let capExtension = try ExtensionDeclSyntax("extension \(classDecl.name):CAPPlugin") {}
        return [capExtension]
    }
}

