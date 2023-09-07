
@attached(extension)
public macro CapacitorPlugin() = #externalMacro(module: "CapacitorMacrosMacros", type: "CapacitorPluginMacro")

@attached(peer)
public macro CapacitorPluginMethod() = #externalMacro(module: "CapacitorMacrosMacros", type: "CapacitorPluginMethodMacro")
