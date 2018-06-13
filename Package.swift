// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RFC3339DateFormatter",
    products: [
        .library(
            name: "RFC3339DateFormatter",
            targets: ["RFC3339DateFormatter"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RFC3339DateFormatter",
            dependencies: []),
        .testTarget(
            name: "RFC3339DateFormatterTests",
            dependencies: ["RFC3339DateFormatter"]),
    ]
)
