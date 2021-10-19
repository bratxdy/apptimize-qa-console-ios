// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApptimizeQAConsole",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ApptimizeQAConsole",
            targets: ["ApptimizeQAConsole"]),
    ],
    dependencies: [
        .package(url: "https://github.com/urbanairship/apptimize-ios-kit", .branch("master"))
    ],
    targets: [
        .target(
            name: "ApptimizeQAConsole",
            dependencies: [
                .product(name: "Apptimize", package: "apptimize-ios-kit")
            ],
            resources: [
                .process("ConsoleViewController.xib")
            ]
        ),
        .testTarget(
            name: "ApptimizeQAConsoleTests",
            dependencies: ["ApptimizeQAConsole"])
    ]
)
