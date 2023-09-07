import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum CapacitorMacroDiagnostics: String, DiagnosticMessage {
    case notAClass

    public var message: String {
        switch self {
        case .notAClass:
            return "@CapacitorPlugin must be applied to class"
        }
    }

    public var diagnosticID: MessageID {
        switch self {
        case .notAClass:
            return MessageID(domain: "ionic.io.capacitor", id: rawValue)
        }
    }

    public var severity: DiagnosticSeverity {
        switch self {
        case .notAClass:
            return .error
        }
    }

}
