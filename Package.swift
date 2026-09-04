
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.21/Connect_XCFramework_Debug.zip",
            checksum: "d00a81f48cbcaa3a88e9d88bee357e013572ab6c4b9ba7fb4f59d88b89b2fd87"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.21/Tealeaf_XCFramework_Debug.zip",
            checksum: "2540d90aa064ffefb084c9e8d4e6e2d0b4c54aa631bfd7655958a78b16488f30"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.21/EOCore_XCFramework_Debug.zip",
            checksum: "60fe31cfe823ed183a81b2b82cba3f04b69ebb2967f2114a01217753a154b93b"),
    ]
)
