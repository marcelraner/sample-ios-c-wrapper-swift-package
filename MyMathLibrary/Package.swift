// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyMathLibrary",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MyMathLibrary",
            targets: ["MyMathLibrary"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CMyMath",
            path: "XCFrameworks/CMyMath.xcframework"
        ),
        .target(
            name: "MyMathLibrary",
            dependencies: ["CMyMath"]
        ),
        .testTarget(
            name: "MyMathLibraryTests",
            dependencies: ["MyMathLibrary"]
        ),
    ]
)
