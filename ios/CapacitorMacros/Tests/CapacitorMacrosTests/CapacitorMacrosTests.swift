import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import CapacitorMacros

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(CapacitorMacrosMacros)
import CapacitorMacrosMacros

let testMacros: [String: Macro.Type] = [
    "CapacitorPlugin": CapacitorPluginMacro.self,
    "CapacitorPluginMethod": CapacitorPluginMethodMacro.self
]
#endif

final class CapacitorMacrosTests: XCTestCase {
    func testMacro() throws {
        #if canImport(CapacitorMacrosMacros)
        assertMacroExpansion(
            """
            @CapacitorPlugin
            class TestPluginMacro {

            }
            """,
            expandedSource: """
            class TestPluginMacro {

            }

            extension TestPluginMacro : CAPPlugin {
            }
            """,
            macros: testMacros
        )
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }
}
