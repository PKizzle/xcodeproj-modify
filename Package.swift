// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "xcodeproj-modify",
    products: [
       .executable(
           name: "xcodeproj-modify",
           targets: ["xcodeproj-modify"]
       )
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/xcodeproj.git", .upToNextMajor(from: "7.10.0")),
    ],
    targets: [
        .target(
            name: "xcodeproj-modify",
            dependencies: ["XcodeProj"]),
        .testTarget(
            name: "xcodeproj-modifyTests",
            dependencies: ["xcodeproj-modify"]),
    ]
)
