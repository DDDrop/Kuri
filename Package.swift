// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kuri",
    platforms: [
        .macOS(.v10_13),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Kuri",
            targets: ["Kuri"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/DDDrop/XcodeProject.git", .branch("master")),
        .package(url: "https://github.com/behrang/YamlSwift.git", from: Version(3, 4, 4)),
        .package(url: "https://github.com/kareman/SwiftShell.git", from: Version(5, 0, 0)),
        .package(url: "https://github.com/kylef/Commander.git", from: Version(0, 9, 0))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Kuri",
            dependencies: ["KuriCore"]),
        .target(
            name: "KuriCore",
            dependencies: ["XcodeProject", "Yaml", "SwiftShell"]),
        .testTarget(
            name: "KuriCoreTests",
            dependencies: ["KuriCore", "SwiftShell"]),
    ]
)
