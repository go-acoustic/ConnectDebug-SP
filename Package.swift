
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
            url: "https://github.com/go-acoustic/Connect/releases/download/1.0.57/Connect_XCFramework_Debug.zip",
            checksum: "2b7cf959dab09b2c3bf37b91b5e72643a80ee1cb7350c93808bbf3de637dd36e"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Tealeaf/releases/download/10.6.320/Tealeaf_XCFramework_Debug.zip",
            checksum: "0fe64bdf21af7e3f323075210e625d08df3817bb2c74fdf0779422eefc950e68"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/EOCore/releases/download/2.3.317/EOCore_XCFramework_Debug.zip",
            checksum: "acb7143b879bee612083e6ea9272a205dd9f20b6191ae7825127fee968f0109d"),
    ]
)
