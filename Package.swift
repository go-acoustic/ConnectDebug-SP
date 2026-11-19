
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.3.2/Connect_XCFramework_Debug.zip",
            checksum: "934c80e87b2b0b5bf4dd26b09b71d3aff55e488d7536006e7c281b22fc1b0f76"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.3.2/Tealeaf_XCFramework_Debug.zip",
            checksum: "8c8254a769cbcb9b1510a6bafd36014fea774c682366711cf5de1c389581bafd"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.3.2/EOCore_XCFramework_Debug.zip",
            checksum: "5803a55e8ebe4d5edfd55175a57e428cf4f6fb5deca87bd44fc6d74b58c752a5"),
    ]
)
