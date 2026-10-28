
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.19/Connect_XCFramework_Debug.zip",
            checksum: "f67ea6b17c789bff8fecbf1ee7cdbaa0290f44f2c2074d38038703e105d203c0"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.19/Tealeaf_XCFramework_Debug.zip",
            checksum: "4019d2c6abe4f31bc2ad3c3e456a63b8dc4d9827dead2f1e0fa7c80edead6913"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.19/EOCore_XCFramework_Debug.zip",
            checksum: "5d7b028a2ed7e0a5452754dc838e21627e6c7f644612333e9b3c135fffaf63cc"),
    ]
)
