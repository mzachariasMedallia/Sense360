// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "medallia-sense360",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "medallia-sense360",
            targets: ["Sense360_Wrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/mzachariasMedallia/BridgeSDK.git",
            from: "3.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "Sense360",
            path: "Sense360.xcframework"
        ),
        .target(
            name: "Sense360_Wrapper",
            dependencies: [
                .target(
                    name: "Sense360",
                    condition: .when(platforms: [.iOS])
                ),
                .product(
                    name: "BridgeSDK",
                    package: "BridgeSDK",
                    condition: .when(platforms: [.iOS])
                )
            ],
            path: "Sense360_Wrapper"
        )
    ]
)
