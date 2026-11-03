
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.26/Connect_XCFramework_Debug.zip",
            checksum: "af994f9309651286042cf952efe59e6309eca898ce5f7dc5163ca324de3cbd09"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.26/Tealeaf_XCFramework_Debug.zip",
            checksum: "5f3e3f7cce3eea0fe0819fdde6fc3e8c2a3a85a7454d4709dcac45cca84f6059"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.26/EOCore_XCFramework_Debug.zip",
            checksum: "a4ee9b5bc0d50f1d77d9d29aa467fc323d05f9f0915d6776df2aec4215d75971"),
    ]
)
