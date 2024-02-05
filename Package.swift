// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libevent.swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "libevent", targets: ["libevent"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "libevent",
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "libeventTests",
            dependencies: ["libevent"]
        ),
    ],
    swiftLanguageVersions: [.v5],
    cLanguageStandard: .gnu89
)
