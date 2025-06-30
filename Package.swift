// swift-tools-version: 5.9
import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "MCBubble",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13), .visionOS(.v1)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MCBubble",
            targets: ["MCBubble"]
        )
    ],
    dependencies: [
        // Depend on the latest Swift 5.9 SwiftSyntax
        .package(url: "https://github.com/iAmMccc/MCBubble.git", "509.0.0"..<"601.0.0-prerelease")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Macro implementation that performs the source transformation of a macro.
        // Library that exposes a macro as part of its API, which is used in client programs.
        .target(
            name: "MCBubble")
    ]
)
