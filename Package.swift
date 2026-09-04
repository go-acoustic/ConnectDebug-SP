
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.22/Connect_XCFramework_Debug.zip",
            checksum: "0ccec928e0fbf5437ec8fce4e030e5ec10c2e27d04efd09a81191fa6adb224a2"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.22/Tealeaf_XCFramework_Debug.zip",
            checksum: "f8951b2e6f3d5b0f53051e5c3edec92d902218e9f300a1a486b4ad5fe4f88548"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.22/EOCore_XCFramework_Debug.zip",
            checksum: "740f9c6cf0c180a8eca8f61f6079906709c35dd71318f36a522d084fce5b7e28"),
    ]
)
