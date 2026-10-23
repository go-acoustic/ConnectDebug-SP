
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.11/Connect_XCFramework_Debug.zip",
            checksum: "1e72edff7709e0213f742a9bd3c30de3a377adfebb00ba84890b95b7764e4271"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.11/Tealeaf_XCFramework_Debug.zip",
            checksum: "fdc432ce6da48a5bbcf74cf9d7a7fcfdba928a4f081bba74453ed443fa041f0e"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.11/EOCore_XCFramework_Debug.zip",
            checksum: "24419ccf7d9b90e854f2c6d1e3c8f29325c3f8b6e3f5add9fa927ffcfea9c4bd"),
    ]
)
