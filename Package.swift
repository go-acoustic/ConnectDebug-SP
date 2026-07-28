
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.16/Connect_XCFramework_Debug.zip",
            checksum: "13039b293a44e87ae734c67e18c08d73f91b12b9584aa0fb31dc326195961e79"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.16/Tealeaf_XCFramework_Debug.zip",
            checksum: "69287c2601fa41c3fa3834c9dcd8f3bbb9f20ba93eea7e17fcd3cbc16881cefe"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.16/EOCore_XCFramework_Debug.zip",
            checksum: "0fa9f89757dcd965d478f54928f2c114f2fe9a01f26cae847ad28346acb71b68"),
    ]
)
