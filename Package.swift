
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.45/Connect_XCFramework_Debug.zip",
            checksum: "0b3884a9bfcaa6f5b7822510f4b699056a631dea4e52cc35f93c9373d7598629"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.45/Tealeaf_XCFramework_Debug.zip",
            checksum: "b78b51b91e2f4fa1e5aad858c1a028a14747cc5c052fd752944645e5c1c400fa"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.45/EOCore_XCFramework_Debug.zip",
            checksum: "9de54fd4d0ee34b6f05b498cbca93ad52073f2653fb8782d5825ee1760e0c9d9"),
    ]
)
