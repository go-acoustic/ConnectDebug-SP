
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.10/Connect_XCFramework_Debug.zip",
            checksum: "6af89e70541177c23a6a3284d4c7b7d2af499eb05923c3b270d10c436bfeaead"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.10/Tealeaf_XCFramework_Debug.zip",
            checksum: "1f2b8b1d33f2138785d6c21aea8c4dd86f87b4951eaffb2362002e7184181cc6"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.10/EOCore_XCFramework_Debug.zip",
            checksum: "26d3b7e68c11370e7bfe6e0fc1800f183f5c52b5890ba82a13eee5947939b6ff"),
    ]
)
