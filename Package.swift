// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "BridgeSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "BridgeSDK",
            targets: ["BridgeSDK_Wrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mzachariasMedallia/BridgeSDK.git", from: "3.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "BridgeSDK",
            path: "BridgeSDK.xcframework"
        ),
        .target(name: "BridgeSDK_Wrapper",
                dependencies: [
                    .target(name: "BridgeSDK", condition: .when(platforms: .some([.iOS])))
                ],
                path: "BridgeSDK_Wrapper"
        )
    ]
)