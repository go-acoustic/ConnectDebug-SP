
// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2025 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using Connect debug version, if you need release version use https://github.com/go-acoustic/Connect-SP")
let package = Package(
    name: "Connect",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Connect",
            targets: ["Connect", "Tealeaf", "EOCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Connect",
            url: "https://github.com/go-acoustic/Connect/releases/download/1.0.45/Connect_XCFramework_Debug.zip",
            checksum: "b87dfec75db4857e0cc4ae63f0db207518f68561b5a33e6d3ee59a5b643649f0"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Tealeaf/releases/download/10.6.312/Tealeaf_XCFramework_Debug.zip",
            checksum: "f15837840dbcb5724f382dfe7cc4a6d0662ab1c3a94e7262f96d461d909f15ff"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/EOCore/releases/download/2.3.296/EOCore_XCFramework_Debug.zip",
            checksum: "da3288ba2a36545151dfb17d280f4b6b5900051d5d5a3c15c85656e084160b1b"),
    ]
)
