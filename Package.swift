
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.34/Connect_XCFramework_Debug.zip",
            checksum: "e9921a333ddb4b1dff95c6eb57e56c471a54cc64a0f986cb17cbc8dec0aac0aa"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.34/Tealeaf_XCFramework_Debug.zip",
            checksum: "0a406d5fc72a32b4564b74cc1dc79bf8f681db9fa516e89c140dd50cb7967624"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.34/EOCore_XCFramework_Debug.zip",
            checksum: "b97746b62ddcab4bcb1b414bf575e72a0006091b7c16a750e2b3cc4e1e39f644"),
    ]
)
