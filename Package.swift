
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.20/Connect_XCFramework_Debug.zip",
            checksum: "babc56a028b6696e8a4d516bdfce022229bcdae91cb4f7cd55b26979e5d075e6"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.20/Tealeaf_XCFramework_Debug.zip",
            checksum: "322ede17f3d8fe7cd8eb53e9b5f1aec45d0b22e0a44baa8ac9bb18a0c6a5f64c"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.20/EOCore_XCFramework_Debug.zip",
            checksum: "d984a2693271e0c2c7fbb919d56696e1af35655401dc8906a6347bbe02867aa0"),
    ]
)
