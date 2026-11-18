
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.3.1/Connect_XCFramework_Debug.zip",
            checksum: "8e03aeea0dd764a5476cc855e67a080bb2c6a50b9535fc1e92e7301fd30b027f"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.3.1/Tealeaf_XCFramework_Debug.zip",
            checksum: "820e828312ea431332ae141db2b344f397baa6df794520ea360f19aa4789dad9"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.3.1/EOCore_XCFramework_Debug.zip",
            checksum: "3c8c983aae6c815e8281400f9af166bc16845ad1dab0db6b502c48f469639e21"),
    ]
)
