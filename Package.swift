
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.10/Connect_XCFramework_Debug.zip",
            checksum: "523e1dd29438416f09fa90bbdf8dc49c51622530bab62b4b8ff9dfdbfb59aa24"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.10/Tealeaf_XCFramework_Debug.zip",
            checksum: "291842b50c5d62f9e9658eedb824f8b9fdad255af17ba2b2e7df5126f044f731"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.10/EOCore_XCFramework_Debug.zip",
            checksum: "65da86f3e415e77e200c5abcc43d6228ba4da860a4c5e3241b95ee30e173827c"),
    ]
)
