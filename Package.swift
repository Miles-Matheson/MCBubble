// swift-tools-version: 5.9
import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "MCBubble",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "MCBubble",
            targets: ["MCBubble"]),
    ],
    dependencies: [
     
    ],
    targets: [
        .target(
            name: "MCBubble",
            dependencies: [],
            path: "MCBubble"),
    ],
    swiftLanguageVersions: [.v5]
)
