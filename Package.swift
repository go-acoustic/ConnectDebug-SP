
// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2026 Acoustic, L.P. All rights reserved.
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
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Connect",
            targets: ["Connect", "Tealeaf", "EOCore"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Connect",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.23/Connect_XCFramework_Debug.zip",
            checksum: "6b3cd57dc3ed54821dc7f52c3917b877a4200e7fe8068c521dc5af2be4393cd0"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.23/Tealeaf_XCFramework_Debug.zip",
            checksum: "eab5a2394f08c4548455536ed4c96782273af16798c1b593bd28eb47e04e77bd"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.23/EOCore_XCFramework_Debug.zip",
            checksum: "f590a2d869c05cbb9e207925705687889fba1534572f520e76f7f2cc9dae3b2a"),
    ]
)
