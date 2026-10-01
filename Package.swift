
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.46/Connect_XCFramework_Debug.zip",
            checksum: "2fbd94ff57d7c69e060a0f4c0ec4c8cabf24e0f1a85d54a8081637a107ff92d6"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.46/Tealeaf_XCFramework_Debug.zip",
            checksum: "7f7e7da7b2ce107072077e4449b5e9298526ab7ec55e856ad8ed6aceae92318a"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.46/EOCore_XCFramework_Debug.zip",
            checksum: "0c1d638836f386dadeb22ee6dd6211e11c9a1749d67295db49232bb5a3abe46c"),
    ]
)
