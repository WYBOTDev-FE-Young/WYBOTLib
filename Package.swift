// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WYBOTLib",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "WYBOTLib", targets: ["WYBOTLib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server-community/mqtt-nio", from: "2.12.1"),
    ],
    targets: [
        .binaryTarget(
            name: "WYBOTLibBinary",
            path: "./Sources/WYBOTLib.xcframework"
        ),
        .target(
            name: "WYBOTLib",
            dependencies: [
                "WYBOTLibBinary",
                .product(name: "MQTTNIO", package: "mqtt-nio")
            ]
        )
    ]  
)
