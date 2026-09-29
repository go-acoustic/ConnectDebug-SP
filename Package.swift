
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.40/Connect_XCFramework_Debug.zip",
            checksum: "0b4e1d8c88f2833ef2dcba6ef9524707cbadd6dba9d42d523cb7ea7ede74583e"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.40/Tealeaf_XCFramework_Debug.zip",
            checksum: "b2ff1749211d99e40a48c8b3fa7185388cc9386b92e21e83f9341bb0df769129"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.40/EOCore_XCFramework_Debug.zip",
            checksum: "bf39173fd6b82919f1b67d3bc7579dc80560d77abe76c14c301087d52827fc9e"),
    ]
)
